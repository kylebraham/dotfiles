alias cl='clear'
alias la='lsd -Al --group-directories-first -X'
alias h="history"
alias grep='grep --color=auto'

#cd to common dirs
alias doc='cd ~/Documents'
alias rs='cd ~/repos'
alias sc='cd ~/scripts'

# run flatpaks
alias z='flatpak run dev.zed.Zed'

##DOCKER##

alias dra='docker system prune -af --volumes'   # remove all docker items
alias di='dti > /dev/null 2>&1 ; docker images' # show docker images and trim any with '<none>'

