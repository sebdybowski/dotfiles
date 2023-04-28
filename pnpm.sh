#! /bin/bash

export PNPM_HOME="/home/seb/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

alias pnpx="pnpm dlx"

