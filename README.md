```
                              .___      __    _____.__.__
                            __| _/_____/  |__/ ____\__|  |   ____   ______
                           / __ |/  _ \   __\   __\|  |  | _/ __ \ /  ___/
                          / /_/ (  <_> )  |  |  |  |  |  |_\  ___/ \___ \
                          \____ |\____/|__|  |__|  |__|____/\___  >____  >
                               \/                               \/     \/

                        This repository contains personal dotfiles of Icarus.
```

# dotfiles

| Major tools                                           |
| ----------------------------------------------------- |
| [neovim][] (Main text editor)                         |
| [vscode][] with Vim keybinding (mostly for debugging) |
| [alacritty][] (terminal emulator)                     |
| [comby][] (search and change code structure tool)     |
| [tmux][] (terminal multiplexer)                       |
| [i3][] (tiling window manager)                        |
| Arch Linux ([manjaro][])                              |

[neovim]: https://github.com/HicaroD/nvim-cfg-lua
[vscode]: https://code.visualstudio.com/
[alacritty]: https://alacritty.org/
[comby]: https://comby.dev/
[i3]: https://i3wm.org/
[manjaro]: https://manjaro.org/
[tmux]: https://github.com/tmux/tmux

## Packages

- Linux

```bash
sudo pacman -S yay # for installing packages from AUR
sudo pacman -S flameshot # for screenshots
sudo pacman -S xclip # tool for copying things to the clipboard (useful for Neovim as well)
sudo pacman -S make patch wget cmake ninja clang base-devel # Necessary for installing other packages
yay anki # for english practice through cards
yay comby-bin # a really powerful search and replace
```

- Git

```bash
git config --global user.email "..."
git config --global user.name "..."
git config --global core.editor "nvim"
```

- Terminal

```bash
sudo pacman -S alacritty
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc && ln ./zsh/.zshrc ~
```

```bash
mkdir ~/.config/alacritty && ln ./alacritty/alacritty.toml ~/.config/alacritty
```

- Languages

```
sudo pacman -S python
# See https://go.dev/doc/install for Golang
```

- Window manager

```bash
sudo pacman -S i3-wm i3status
mkdir -p ~/.config/i3/i3status/ && ln ./i3/config ~/.config/i3 && ln ./i3/i3status/config ~/.config/i3/i3status/
sudo pacman -S dmenu # for opening programs easily on i3
```

- Wallpaper

```
sudo pacman -S nitrogen
```

- Monitor

```bash
sudo pacman -S xorg-xrandr xorg-xinput
ln .xinitrc ~
```

- Development

```bash
sudo pacman -S neovim ripgrep
git clone https://github.com/HicaroD/nvim-cfg-lua ~/.config/nvim
```

```bash
sudo pacman -S nodejs npm # npm for installing packages
npm install -g pyright # pyright
npm install -g emmet-ls # emmet
npm install -g prettier # prettier for code formatting
npm i -g vscode-langservers-extracted # HTML, CSS, JSON, ESLint and more
npm install -g typescript typescript-language-server # Typescript

go install golang.org/x/tools/gopls@latest # Golang
go install github.com/nametake/golangci-lint-langserver@latest # Golang
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest # Golang

sudo pacman -S stylua # Code formatter for Lua
```

```bash
sudo pacman -S tmux
ln ./tmux/.tmux.conf ~
```
