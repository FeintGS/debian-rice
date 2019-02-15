export PATH="$PATH:/usr/local/sbin:/sbin:/usr/sbin"
export PATH="$PATH:/usr/bin:/usr/local/bin/"

shopt -s autocd
shopt -s extglob

[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# run singleton of each process, if shell isn't connected via SSH
if [ ! -n "$SSH_CLIENT" ] && [ ! -n "$SSH_TTY" ] && [ ! -n "$SSH_CONNECTION" ]; then
  [ -z `pgrep -x mpd 1>/dev/null 2>&1` ] || mpd 1>/dev/null 2>&1
  [ -z `pgrep -x tlp 1>/dev/null 2>&1` ] || tlp 1>/dev/null 2>&1
  [ -z `pgrep -x acpid 1>/dev/null 2>&1` ] || acpid 1>/dev/null 2>&1 

  # then, run the X11 server
  startx 1>/dev/null 2>&1
fi

