#! /bin/sh

# Update all packages
alias uap="sudo pacman -Syu && yay -Syu --noconfirm"

# Pacman utils
alias pin="sudo pacman -S"
alias pun="sudo pacman -Rs"
alias ppr="sudo pacman -Rcns"
alias pls="pacman -Q"

# Yay utils
alias yin="yay -S --noconfirm"
alias yun="yay -Rs"
alias ypr="yay -Rcns"
alias yls="yay -Qm"
