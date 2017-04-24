
#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

if [ -d $HOME/.dotfiles/zshrc.d ]; then
  for file in $HOME/.dotfiles/zshrc.d/*.bash; do
    source $file
  done 
fi

# Fix cursor
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[cursor]=underline

#fpath=(~/.zsh/completion $fpath)

#autoload -Uz compinit && compinit -i
