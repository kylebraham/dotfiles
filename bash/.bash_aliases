alias cl='clear'
alias la='ls -lhAF --file-type --group-directories-first'
alias lsd='lsd -Al --group-directories-first -X'
alias sbrc='source ~/.bashrc'
alias h="history"
alias grep='grep --color=auto'
alias mps='ps -a -U $USER'

#cd to common dirs
alias doc='cd ~/Documents'
alias rs='cd ~/repos'
alias sc='cd ~/scripts'
alias ts='cd ~/tools'

##DOCKER##

alias dra='docker system prune -af --volumes'   # remove all docker items
alias di='dti > /dev/null 2>&1 ; docker images' # show docker images and trim any with '<none>'

##OTHER##
alias kde-refresh='killall plasmashell && kstart plasmashell' # stop and restart kd5

alias sw='curl wttr.in' # show weather
