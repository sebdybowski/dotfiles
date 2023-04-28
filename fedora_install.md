# fedora_install.md
## DNF tweaks
`sudo nano /etc/dnf/dnf.conf`

```conf
# see `man dnf.conf` for defaults and possible options

[main]
gpgcheck=True
installonly_limit=3
clean_requirements_on_remove=True
best=False
skip_if_unavailable=True
max_parallel_downloads=10
fastestmirror=True
```

## DNF Packages
```bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update

sudo dnf install -y zsh git kdenlive keepassxc neovim python3-neovim code
```

## Flatpak
- Init: `flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`
- `flatpak install flathub com.raggesilver.BlackBox`
- `com.github.finefindus.eyedropper`
- `com.github.lxgr_linux.pokete`
- `com.obsproject.Studio`
- `com.spotify.Client`
- `com.vixalien.sticky`
- `io.github.Figma_Linux.figma_linux`
- `org.getmonero.Monero`
- `com.simplenote.Simplenote`
- `com.slack.Slack`

## Gnome plugins
- enabled
```bash
❯ gnome-extensions list --enabled

awesome-tiles@velitasali.com
user-theme@gnome-shell-extensions.gcampax.github.com
Vitals@CoreCoding.com
clipboard-indicator@tudmotu.com
appindicatorsupport@rgcjonas.gmail.com
space-bar@luchrioh
background-logo@fedorahosted.org

```
- installed
```bash
❯ gnome-extensions list                                
impatience@gfxmonk.net
awesome-tiles@velitasali.com
user-theme@gnome-shell-extensions.gcampax.github.com
auto-move-windows@gnome-shell-extensions.gcampax.github.com
emoji-selector@maestroschan.fr
Vitals@CoreCoding.com
clipboard-indicator@tudmotu.com
onedrive@diegomerida.com
appindicatorsupport@rgcjonas.gmail.com
space-bar@luchrioh
gnome-one-window-wonderland@jqno.nl
apps-menu@gnome-shell-extensions.gcampax.github.com
background-logo@fedorahosted.org
launch-new-instance@gnome-shell-extensions.gcampax.github.com
places-menu@gnome-shell-extensions.gcampax.github.com
window-list@gnome-shell-extensions.gcampax.github.com
gamemode@christian.kellner.me
```

## PWA

## Tools
- nvm `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash`
- nvm default `nvm install --lts`
- pnpm `curl -fsSL https://get.pnpm.io/install.sh | sh -`
- slimzsh `git clone --recursive https://github.com/changs/slimzsh.git ~/.slimzsh`
