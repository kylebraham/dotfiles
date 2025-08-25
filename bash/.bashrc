# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
for file in $(find -L ~/.bashrc.d -type f); do
    [ -r "$file" ] && source "$file"
done
unset file

#  direnv hook
eval "$(direnv hook bash)"

# starship prompt
eval "$(starship init bash)"
