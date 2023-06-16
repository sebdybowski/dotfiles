#! /bin/bash

sudo dnf install git zsh neovim alacritty keepassxc
sudo dnf install https://kojipkgs.fedoraproject.org//packages/fasd/1.0.1/2.el7/noarch/fasd-1.0.1-2.el7.noarch.rpm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
nvm install --lts
curl -fsSL https://get.pnpm.io/install.sh | sh -