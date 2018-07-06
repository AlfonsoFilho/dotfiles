#!/usr/bin/env bash

# sudo rm -rf $HOME/.zim

sudo apt-get update -yq

# Terminal Tools
sudo apt-get install -yq \
  git \
  zsh \
  wget \
  curl \
  tig \
  httpie \
  tree \
  htop \
  tree \
  tmux \
  vim \
  ranger \
  fish \
  neovim \
  xclip \
  shellcheck

# Zsh
# chsh -s $(which zsh)

# GUI apps
sudo apt-get install -yq \
  gimp \
  inkscape \
  code

# Git icdiff
curl -s https://raw.githubusercontent.com/jeffkaufman/icdiff/release-1.9.0/icdiff | sudo tee /usr/local/bin/icdiff > /dev/null 
sudo chmod ugo+rx /usr/local/bin/icdiff

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# Zim
# zsh zsh-install.zsh

# Rust
# curl https://sh.rustup.rs -sSf | sh

# # Alacritty
# git clone https://github.com/jwilm/alacritty.git
# cd alacritty || exit
# rustup override set stable
# rustup update stable
# source $HOME/.cargo/env
# sudo apt-get install -yq cmake libfreetype6-dev libfontconfig1-dev
# cargo build --release
# cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
# desktop-file-install alacritty.desktop
# update-desktop-database
# cp alacritty-completions.zsh /usr/share/zsh/functions/Completion/X/_alacritty
