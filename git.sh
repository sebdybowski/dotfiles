#! /bin/bash

PREFIX="[sd]"

__error() {
    echo "${RED}${PREFIX} Error...${NOCOLOR}"
}

__success() {
    echo "${GREEN}${PREFIX} Success!${NOCOLOR}"
}

gsb() {
    if
        git add -A &&
        git commit -m $1 &&
        git push origin HEAD
    then
        __success
    else
        __error
    fi
}

grb() {
    git rebase -i HEAD~$1
}

alias gcm="git add -A && git commit -m"
alias gnb="git checkout -b"
alias gps="git push origin HEAD"
