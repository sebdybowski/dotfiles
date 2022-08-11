#! /bin/bash

gsb() {
    git add -A
    git commit -m $1
    git push origin HEAD
    echo "${GREEN}[sd] Submitted changes!${NOCOLOR}"
}

grb() {
    git rebase -i HEAD~$1
}

alias gcm="git add -A && git commit -m"
alias gnb="git checkout -b"
