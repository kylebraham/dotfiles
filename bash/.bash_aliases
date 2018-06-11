alias ll='ls -alF'
alias l='ls -CF'
alias cl='clear'
alias la='ls -a'
alias c='pygmentize -O style=monokai -f console256 -g'
alias sbrc='source ~/.bashrc'

#cd to common dirs
alias wk='cd ~/code/repos/work'
alias gh='cd ~/code/repos/github'
alias sb='cd ~/code/repos/sandbox'
alias dfw='cd ~/.dotfiles/personal'
alias dfp='cd ~/.dotfiles/work'
alias doc='cd ~/Documents'

##DOCKER##

alias dk='docker'
alias dkc='docker-compose'
alias dra='docker system prune -af'          # remove all docker items
alias dim='dti > /dev/null 2>&1 ; docker images'             # show docker images but not the <none> ones 


alias  kde-refresh='killall plasmashell && kstart plasmashell' # stop and restart kd5 