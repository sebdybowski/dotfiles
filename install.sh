#! /bin/bash

DIR=$(dirname "$0")

source "${DIR}/colors.sh"

__SD="$HOME/.sd"
__INIT="$HOME/.sd/init.sh"
__BASHRC="$HOME/.bashrc"
__ZSHRC="$HOME/.zshrc"

if
    test -d "${__SD}"
then
    echo -e "${RED}Error: ${__SD} already exists. \n Please remove it before installing.${NOCOLOR}"
    exit 1
else
    git clone --recursive https://github.com/sebdybowski/dotfiles.git $__SD &&
    echo -e "${GREEN}Repository cloned.${NOCOLOR}" &&

    test -f "${__BASHRC}" &&
    echo "source ${__INIT@Q}" >> "${__BASHRC}" &&
    echo -e "${BLUE}Added ${__INIT} to ${__BASHRC}.${NOCOLOR}"

    test -f "${__ZSHRC}" &&
    echo "source ${__INIT@Q}" >> "${__ZSHRC}" &&
    echo -e "${BLUE}Added ${__INIT} to ${__ZSHRC}.${NOCOLOR}"
fi
