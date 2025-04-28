MacOS Dotfiles
---


Install `brew` ([brew.sh](https://brew.sh/)):
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
```

Install `zsh`:
```bash
brew install zsh
# set as default shell
chsh -s $(which zsh)
# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Brew packages `brew install <...>`
```
git
python3
coreutils
pkg-config
docker
tree
nmap
htop
cmake
rust
gcc
clang
gping
```

CLI enhancements(from [here](https://www.josean.com/posts/7-amazing-cli-tools)):
---

```
brew install fzf
brew install bat
brew install eza
code ~/.zshrc
```

Add to .zshrc
```bash

eval "$(fzf --zsh)"
alias ls="eza --color=always --long --git --tree

```