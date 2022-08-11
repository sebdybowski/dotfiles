#! /bin/bash

alias gsb="git add -A && git commit -m $1 && git push origin HEAD && echo "[sd] Pulled changes!""
alias gcm="git add -A && git commit -m $1"
alias grb="git rebase -i HEAD~${1}"
alias gnb="git checkout -b ${1}"
