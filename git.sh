#! /bin/bash

SD_PREFIX="[sd]"

__error() {
    echo "${RED}${SD_PREFIX} Error...${NOCOLOR}"
}

__success() {
    echo "${GREEN}${SD_PREFIX} Success!${NOCOLOR}"
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
alias gpl="git pull origin HEAD"
alias grs="git reset --hard"
alias gcl="git clone"
alias gst="git status"

