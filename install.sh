#!/usr/bin/env bash

printf "Installing dotfiles...\n"
declare -a stow_pkgs=("bash" "git" "fish" "neovim" "vscode")

for pkg in "${stow_pkgs[@]}"; do
    printf "\tInstalling: $pkg\n"
    stow -D $pkg
    stow $pkg -t $HOME
done
