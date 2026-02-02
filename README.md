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
| [kitty][] (terminal emulator)                         |
| [comby][] (search and change code structure tool)     |
| [tmux][] (terminal multiplexer)                       |

[neovim]: https://github.com/HicaroD/nvim-cfg-lua
[vscode]: https://code.visualstudio.com/
[kitty]: https://sw.kovidgoyal.net/kitty/
[comby]: https://comby.dev/
[tmux]: https://github.com/tmux/tmux

## Packages

- Git

```bash
git config --global user.email "..."
git config --global user.name "..."
git config --global core.editor "nvim"
git config --global url.ssh://git@github.com/.insteadOf https://github.com/ # always use ssh
```

- Terminal

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc && ln ./zsh/.zshrc ~
```

```bash
mkdir ~/.config/kitty && ln ./kitty/kitty.conf ~/.config/kitty
```

```bash
ln ./tmux/.tmux.conf ~
```
