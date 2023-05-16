# .bashrc
shopt -s autocd
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

for file in ~/.{exports,bash_aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file
