set -x PATH $PATH ~/.cargo/bin/
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
set -g fish_greeting ''

starship init fish | source
