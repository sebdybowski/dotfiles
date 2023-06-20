#! /bin/bash

TIME_STAMP=$(date +%s);
DIR_NAME="dotfiles-tmp-${TIME_STAMP}"
REPO_URL="https://github.com/sebdybowski/dotfiles.git"

if [[ $* == *--ssh* ]]
then REPO_URL="git@github.com:sebdybowski/dotfiles.git"
fi

cd ~ || exit
git clone --recursive --depth 1 ${REPO_URL} "./${DIR_NAME}"
cp -r "./${DIR_NAME}/." ~
rm -rf "./${DIR_NAME}"
