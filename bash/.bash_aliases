alias ll='ls -alF'
alias l='ls -CF'
alias cl='clear'
alias la='ls -A --file-type'
alias ld='ls -d -- */'
alias c='pygmentize -O style=monokai -f console256 -g'
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
alias dk='docker'
alias dkc='docker-compose'
alias dra='docker system prune -af'          # remove all docker items
alias di='dti > /dev/null 2>&1 ; docker images'             # show docker images but not the <none> ones 


alias  kde-refresh='killall plasmashell && kstart plasmashell' # stop and restart kd5

alias sw='curl wttr.in' # show weather 