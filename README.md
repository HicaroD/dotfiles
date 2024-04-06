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
| [i3][] (tiling window manager)                        |
| Arch Linux ([manjaro][])                              |

| Other tools                     |
| ------------------------------- |
| [tmux][] (terminal multiplexer) |

[neovim]: https://github.com/HicaroD/nvim-cfg-lua
[vscode]: https://code.visualstudio.com/
[alacritty]: https://alacritty.org/
[i3]: https://i3wm.org/
[manjaro]: https://manjaro.org/
[tmux]: https://github.com/tmux/tmux

## Packages

- Linux

```bash
sudo pacman -S yay # for installing packages from AUR
sudo pacman -S flameshot # for screenshots
sudo pacman -S xclip # tool for copying thins to the clipboard (useful for Neovim as well)
sudo pacman -S make patch # Necessary for installing other packages
yay anki # for english practice through cards
```

- Window manager

```bash
sudo pacman -S i3-wm i3status
mkdir -p ~/.config/i3/i3config && ln ./i3/config ~/.config/i3 && ln ./i3/i3status/config ~/.config/i3/i3status/
```

- Monitor

```bash
sudo pacman -S xorg-xrandr xorg-xinput
ln .xinitrc ~
```

- Development

```bash
sudo pacman -S alacritty
mkdir ~/.config/alacritty && ln ./alacritty/alacritty.toml ~/.config/alacritty
```

```bash
sudo pacman -S neovim ripgrep
git clone https://github.com/HicaroD/nvim-cfg-lua ~/.config/nvim
```

```bash
sudo pacman -S nodejs npm
npm install -g emmet-ls # emmet
npm install -g prettier # prettier for code formatting

go install github.com/nametake/golangci-lint-langserver@latest # Golang
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest # Golang

npm install -g pyright # Python
```

```bash
sudo pacman -S tmux
ln ./tmux/.tmux.conf ~
```
