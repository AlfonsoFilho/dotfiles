if [ -d $HOME/.dotfiles/bash.d ]; then
  for file in $HOME/.dotfiles/bash.d/*.bash; do
    source $file
  done 
fi

export PS1="🖿  \w\n$ "
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
