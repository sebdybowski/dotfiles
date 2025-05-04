# Seb Dybowski's dotfiles
My Linux/MacOS config.

# Installation
## Packages
1. **MacOS**: via [homebrew](https://brew.sh/).
```sh
brew install gh git nano nanorc pnpm zsh --cask alacritty font-hack
```

## DotFiles
This command will clone files into your **home/user directory**.

### wget
```bash
bash -c  "$(wget -qO- https://raw.githubusercontent.com/sebdybowski/dotfiles/main/install.sh)"
```

### curl
```bash
bash -c  "$(curl -sLo- https://raw.githubusercontent.com/sebdybowski/dotfiles/main/install.sh)"
```

## Installation flags
- `--ssh`, pulls code from ssh origin, recommended for dotfiles development/contributions.

# Adjustments
## `.scripts/init.sh`
This is a central file of all *sh* scripts. 
If some of them are redundant, feel free to comment the appropriate line:
```sh
source "${__HOME_DIR}/nvm.sh"
# source "${__HOME_DIR}/pnpm.sh" // this won't load on shell start
source "${__HOME_DIR}/ls.sh"
```

# Scripts
If you only want to use my scripts without the dotfiles, find them in [this repository](https://github.com/sebdybowski/scripts).

