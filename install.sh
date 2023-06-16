#! /bin/bash

cd ~ || exit
git clone --recursive https://github.com/sebdybowski/dotfiles.git ./dotfiles-tmp
cp -r ./dotfiles-tmp/. ~
rm -rf ./dotfiles-tmp
