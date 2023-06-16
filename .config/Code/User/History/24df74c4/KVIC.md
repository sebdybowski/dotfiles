# fedora setup guide
(dotfiles)[https://github.com/sebdybowski/dotfiles]

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

## Nvidia
Find `NVIDIA Linux Graphics Driver in Fedora Marketplace`

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
- teams
- excalidraw

## Tools
- nvm `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash`
- nvm default `nvm install --lts`
- pnpm `curl -fsSL https://get.pnpm.io/install.sh | sh -`
- slimzsh `git clone --recursive https://github.com/changs/slimzsh.git ~/.slimzsh`

## VS Code config 
```bash
❯ code --list-extensions --show-versions

AdamCaviness.theme-monokai-dark-soda@1.2.0
amazonwebservices.aws-toolkit-vscode@1.73.0
astro-build.astro-vscode@1.0.5
christian-kohler.npm-intellisense@1.4.4
christian-kohler.path-intellisense@2.8.4
dbaeumer.vscode-eslint@2.4.0
dracula-theme.theme-dracula@2.24.2
dsznajder.es7-react-js-snippets@4.4.3
EditorConfig.EditorConfig@0.16.4
esbenp.prettier-vscode@9.12.0
formulahendry.auto-close-tag@0.5.14
formulahendry.auto-rename-tag@0.1.10
foxundermoon.shell-format@7.2.5
GitHub.github-vscode-theme@6.3.4
GraphQL.vscode-graphql@0.8.7
GraphQL.vscode-graphql-syntax@1.1.0
k--kato.intellij-idea-keybindings@1.5.9
ms-azuretools.vscode-docker@1.25.0
MS-CEINTL.vscode-language-pack-pl@1.78.2023051009
ms-vscode-remote.remote-containers@0.292.0
pmndrs.pmndrs@0.3.7
Syler.ignore@0.0.5
timonwong.shellcheck@0.32.5
(*) tinkertrain.theme-panda@1.3.0
xyz.local-history@1.8.1
yzhang.markdown-all-in-one@3.5.1
zhuangtongfa.material-theme@3.15.13
```