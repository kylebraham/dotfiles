# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

for file in ~/dotfiles/bash/.{exports,bash_aliases,functions}; do
    [ -r "$file" ] && source "$file"
done 
unset file


#powerline-shell setup
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

#Setting GOPATH
PATH=$PATH:$(go env GOPATH)/bin