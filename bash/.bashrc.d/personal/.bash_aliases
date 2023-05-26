alias cl='clear'
alias la='ls -lhAF --file-type --group-directories-first'
alias lsd='lsd -Al --group-directories-first -X'
alias h="history"
alias grep='grep --color=auto'

#cd to common dirs
alias doc='cd ~/Documents'
alias rs='cd ~/repos'
alias sc='cd ~/scripts'

##DOCKER##

alias dra='docker system prune -af --volumes'   # remove all docker items
alias di='dti > /dev/null 2>&1 ; docker images' # show docker images and trim any with '<none>'
