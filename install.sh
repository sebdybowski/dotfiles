#! /bin/bash

DIR=$(dirname "$0")

source "${DIR}/colors.sh"

SD="$HOME/.sd"
INIT="$HOME/.sd/init.sh"
BASHRC="$HOME/.bashrc"
ZSHRC="$HOME/.zshrc"

if
    test -d "${SD}"
then
    echo -e "${RED}Error: ${SD} already exists. \n Please remove it before installing.${NOCOLOR}"
    exit 1
else
    git clone --recursive https://github.com/sebdybowski/dotfiles.git $SD

    test -f "${BASHRC}" &&
    echo "source ${INIT}" >> "${BASHRC}"

    test -f "${ZSHRC}" &&
    echo "source ${INIT}" >> "${ZSHRC}"
fi
