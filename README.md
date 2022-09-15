# Seb Dybowski's dotfiles
Compatible with *[bash](https://www.gnu.org/software/bash/)* and *[zsh](https://zsh.sourceforge.io/Doc/)*. 

Supported package managers:

- `apt` - [Debian](https://www.debian.org/) / [Ubuntu](https://ubuntu.com/)
- `dnf` - [Fedora](https://getfedora.org/) / [RHEL](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux)
- `pacman` - [Arch Linux](https://archlinux.org/) / [Manjaro](https://manjaro.org/) / [EndeavourOS](https://endeavouros.com/)

## Setup
### Install script
```bash
bash -c  "$(wget -qO- https://raw.githubusercontent.com/sebdybowski/dotfiles/main/install.sh)"
```

```bash
bash -c  "$(curl -sLo- https://raw.githubusercontent.com/sebdybowski/dotfiles/main/install.sh)"
```


### Manual installtion
1. Perform command: 

```bash
git clone --recursive https://github.com/sebdybowski/dotfiles.git ~/.sd
```

2. Add below line to your `.bashrc` or `.zshrc`.

```bash
source "$HOME/.sd/init.sh"
```
