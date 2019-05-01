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
  neovim \
  xclip \
  shellcheck \
  fonts-symbola

# Zsh
chsh -s $(which zsh)

# GUI apps
sudo apt-get install -yq \
  gimp \
  inkscape \
  code 

# Git icdiff
curl -s https://raw.githubusercontent.com/jeffkaufman/icdiff/release-1.9.0/icdiff | sudo tee /usr/local/bin/icdiff > /dev/null 
sudo chmod ugo+rx /usr/local/bin/icdiff

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

