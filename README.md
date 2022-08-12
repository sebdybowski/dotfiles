# Seb Dybowski's dotfiles
Compatible with *bash* and *zsh*. `pacman.sh` is intended exclusively for Arch Linux.

## Setup
### Install script
`bash -c  "$(wget -qO- https://raw.githubusercontent.com/sebdybowski/dotfiles/main/install.sh)"`

`bash -c  "$(curl -sLo- https://raw.githubusercontent.com/sebdybowski/dotfiles/main/install.sh)"`


### Manual installtion
1. Perform command: 

`git clone --recursive https://github.com/sebdybowski/dotfiles.git ~/.sd`

2. Add below line to your `.bashrc` or `.zshrc`.

`source "$HOME/.sd/init.sh"`
