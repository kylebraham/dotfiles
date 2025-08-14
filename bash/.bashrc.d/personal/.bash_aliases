alias cl='clear'
alias la='lsd -Al --group-directories-first -X'
alias h="history"
alias grep='grep --color=auto'

#cd to common dirs
alias doc='cd ~/Documents'
alias rs='cd ~/repos'
alias sc='cd ~/scripts'

# run flatpaks
alias zed='flatpak run dev.zed.Zed 2> >(grep -v "^ldconfig: /app/lib/libbsd.so.0 is not a symbolic link")'
alias z='flatpak run dev.zed.Zed 2> >(grep -v "^ldconfig: /app/lib/libbsd.so.0 is not a symbolic link")'


##DOCKER##

alias dra='docker system prune -af --volumes'   # remove all docker items
alias di='dti > /dev/null 2>&1 ; docker images' # show docker images and trim any with '<none>'
