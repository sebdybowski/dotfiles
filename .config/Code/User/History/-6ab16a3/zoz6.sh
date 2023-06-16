#! /bin/bash

__HOME_DIR=$(dirname "$0")

source "${__HOME_DIR}/colors.sh"

# Dev
source "${__HOME_DIR}/nvm.sh"
source "${__HOME_DIR}/pnpm.sh"
source "${__HOME_DIR}/ls.sh"
source "${__HOME_DIR}/git.sh"

# Package management
# source "${__HOME_DIR}/pacman.sh"
source "${__HOME_DIR}/dnf.sh"
# source "${__HOME_DIR}/apt.sh"

# Utils
source "${__HOME_DIR}/draw.sh"
source "${__HOME_DIR}/neovim.sh"
source "${__HOME_DIR}/flatpak.sh"
# source "${__HOME_DIR}/gogh.sh"
