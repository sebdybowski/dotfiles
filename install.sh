#! /bin/bash

DIR=$(dirname "$0")

source "${DIR}/colors.sh"

SD="$HOME/.sd"
PATH="$HOME/.sd/init.sh"
BASHRC="$HOME/.bashrc"
ZSHRC="$HOME/.zshrc"

if
    test -d "${SD}"
then
    echo -e "${ORANGE}${SD} already exists. \n Please remove it before installing.${NOCOLOR}"
else
    git clone --recursive https://github.com/sebdybowski/dotfiles.git $SD &&

    test -f "${BASHRC}" &&
    echo "source ${PATH}" >> "${BASHRC}"

    test -f "${ZSHRC}" &&
    echo "source ${PATH}" >> "${ZSHRC}"
fi
