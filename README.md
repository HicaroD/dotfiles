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

| Major tools                       |
| --------------------------------- |
| [neovim][] (Main text editor)     |
| [vscode][] with Vim keybindings   |
| [alacritty][] (terminal emulator) |
| [i3][] (tiling window manager)    |
| Arch Linux ([manjaro][])          |

| Other tools                                                  |
| ------------------------------------------------------------ |
| [tmux][] (terminal multiplexer)                              |
| [gdbgui][] (GDB GUI)                                         |
| [comby][] (powerful search and replace command-line utility) |

[neovim]: https://github.com/HicaroD/nvim-cfg-lua
[vscode]: https://code.visualstudio.com/
[alacritty]: https://alacritty.org/
[i3]: https://i3wm.org/
[manjaro]: https://manjaro.org/
[tmux]: https://github.com/tmux/tmux
[gdbgui]: https://www.gdbgui.com/
[comby]: https://comby.dev/

## Packages

- Linux

```
sudo pacman -S yay # for installing packages from AUR
sudo pacman -S flameshot # for screenshots
yay anki # for english practice
```

- Window manager

```
sudo pacman -S i3-wm i3status
```

- Monitor

```
sudo pacman -S xorg-xrandr xorg-xinput
```

- Development

```
sudo pacman -S alacritty
```

```
sudo pacman -S neovim ripgrep
```

```
sudo pacman -S nodejs npm
npm install -g emmet-ls # Emmet

go install github.com/nametake/golangci-lint-langserver@latest # Golang
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest # Golang

npm install -g pyright # Python
```

```
sudo pacman -S tmux
```
