#! /bin/bash

gsb() {
    git add -A
    git commit -m $1
    git push origin HEAD
    echo '[sd] Submitted changes!'
}

alias gcm="git add -A && git commit -m"
alias grb="git rebase -i HEAD~"
alias gnb="git checkout -b"

alias g="echo $($1)"
