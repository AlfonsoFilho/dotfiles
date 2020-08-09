#!/usr/bin/env bash

# Update packages list
sudo apt-get update -yq

# Terminal Tools
sudo apt-get install -yq \
  build-essential \
  gcc \
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
  shellcheck

# Set Zsh as default shell
chsh -s $(which zsh)

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k Theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install Zsh Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

# Install Fuzzy Finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# GUI apps
# sudo apt-get install -yq \
#   gimp \
#   inkscape \
#   code 

# Git icdiff
# curl -s https://raw.githubusercontent.com/jeffkaufman/icdiff/release-1.9.0/icdiff | sudo tee /usr/local/bin/icdiff > /dev/null 
# sudo chmod ugo+rx /usr/local/bin/icdiff

# NVM
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

