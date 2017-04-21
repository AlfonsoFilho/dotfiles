#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
#git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim

# tmux
ln -sfn ${BASEDIR}/tmux.conf ~/.tmux.conf

# git
ln -sfn ${BASEDIR}/gitconfig ~/.gitconfig

# zsh
ln -sfn ${BASEDIR}/zshrc ~/.zshrc
ln -sfn ${BASEDIR}/zimrc ~/.zimrc
ln -sfn ${BASEDIR}/best.zsh-theme ~/.zim/modules/prompt/functions/prompt_best_setup
