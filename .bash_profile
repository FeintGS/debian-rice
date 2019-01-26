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
alias cfc='vim $HOME/.config/compton/compton.conf'
alias cfb='vim $HOME/.bashrc'
alias cfbp='vim $HOME/.bash_profile'

alias tdl='vim $HOME/.config/conky/list-todo'

shopt -s autocd

alias pkgl='dpkg -L'
alias pkgi='sudo apt install'

alias nightmode="redshift -O 3000 1>/dev/null 2&>1 && notify-send -t 1500 -u low Night Profile Temperature: 3000knBacklight: 70%nGamma: 1.0 && echo Lowering screen color temperature... && xbacklight -set 70"
alias daymode="redshift -x 1>/dev/null 2&>1 && notify-send -t 1500 -u low Day Profile Temperature: 5900knBacklight: 100%nGamma: 1.0 && echo Raising screen color temperature... && xbacklight -set 100"
alias startr='notify-send -u low -t 3000 "ffmpeg" "recording started"; ffmpeg -video_size 1600x900 -framerate 40 -f x11grab -i :0.0 -b:v 25M blur-demo.mp4'
alias stopr='notify-send -u low -t 3000 "ffmpeg" "recording stopped"; pkill ffmpeg'
