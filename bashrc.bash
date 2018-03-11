# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi

# check the window size after each command
shopt -s checkwinsize

# append to the history file, don't overwrite it
shopt -s histappend

if [ -d $HOME/.dotfiles/bash.d ]; then
  for file in $HOME/.dotfiles/bash.d/*.bash; do
    source $file
  done 
fi