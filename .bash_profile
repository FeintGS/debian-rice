#!/bin/bash
export PATH="/usr/local/sbin:/sbin:/usr/sbin:$PATH"
export PATH="$PATH:/usr/bin:/usr/local/bin/"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias G='cd $HOME/Github/'
alias D='cd $HOME/Downloads/'
alias M='cd $HOME/Music/'
alias P='cd $HOME/Pictures/'
alias A='cd $HOME/Anime/'
alias V='cd $HOME/Videos/'

alias cfi='vim $HOME/.config/i3/config'
alias cfp='vim $HOME/.config/polybar/config'

alias tdl='vim $HOME/.config/conky/list-todo'
alias cal='firefox https://calendar.google.com'
alias gmail='firefox https://mail.google.com'
alias drive='firefox https://drive.google.com'
alias twitter='firefox https://twitter.com'
alias youtube='firefox https://youtube.com'
alias reddit='firefox https://reddit.com'

alias apt='sudo apt'

# SSH session manager
exec keychain &
