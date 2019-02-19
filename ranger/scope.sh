#!/usr/bin/env bash

# Basic definitions
path="$1"
width="$2"
height="$3"
cached="$4"
preview_images="$5"
maxln=200

# Determine file mimetype
mimetype=$(file --mime-type -Lb "$path")
extension=$(/bin/echo -E "${path##*.}" | tr "[:upper:]" "[:lower:]")

# Functions:
try() { output=$(eval '"$@"'); }

# writes the output of the previously used "try" command
dump() { /bin/echo -E "$output"; }

# a common post-processing function used after most commands
trim() { head -n "$maxln"; }

# wraps highlight to treat exit code 141 (killed by SIGPIPE) as success
highlight() { command highlight "$@"; test $? = 0 -o $? = 141; }

case "$extension" in
    # Archive extensions:
    7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|\
    rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)
        try als "$path" && { dump | trim; exit 0; }
        try acat "$path" && { dump | trim; exit 3; }
        try bsdtar -lf "$path" && { dump | trim; exit 0; }
        exit 1;;
    csv)
	sed "s/\(.*\".*\),\(.*\".*\)/\1~\2/;s/,/\t/g;s/~/,/g;s/\t\"/\t/g;s/\"\t/\t/g" "$path" && { dump| trim; exit 0; } || exit 1;;
    rar)
        # avoid password prompt by providing empty password
        try unrar -p- lt "$path" && { dump | trim; exit 0; } || exit 1;;
    7z)
        # avoid password prompt by providing empty password
        try 7z -p l "$path" && { dump | trim; exit 0; } || exit 1;;
    pdf)
	      try pdftoppm -jpeg -singlefile "$path" "${cached//.jpg}" && exit 6 || exit 1;;
    # BitTorrent Files
    torrent)
        try transmission-show "$path" && { dump | trim; exit 5; } || exit 1;;
    # HTML Pages:
    htm|html|xhtml)
        try w3m    -dump "$path" && { dump | trim | fmt -s -w $width; exit 4; }
        try lynx   -dump "$path" && { dump | trim | fmt -s -w $width; exit 4; }
        try elinks -dump "$path" && { dump | trim | fmt -s -w $width; exit 4; }
        ;; # fall back to highlight/cat if the text browsers fail
esac

case "$mimetype" in
    image/svg+xml)
       convert "$path" "$cached" && exit 6 || exit 1;;
    image/*)
        exit 7;;
    text/* | */xml)
        if [ "$(tput colors)" -ge 256 ]; then
            pygmentize_format=terminal256
            highlight_format=ansi
        else
            pygmentize_format=terminal
            highlight_format=ansi
        fi
        try safepipe highlight --out-format=${highlight_format} "$path" && { dump | trim; exit 5; }
        try safepipe pygmentize -f ${pygmentize_format} "$path" && { dump | trim; exit 5; }
        exit 2;;
    # Display information about media files:
    video/* | audio/*)
        exiftool "$path" && exit 5
        # Use sed to remove spaces so the output fits into the narrow window
        try mediainfo "$path" && { dump | trim | sed 's/  \+:/: /;';  exit 5; } || exit 1;;
esac


exit 1
