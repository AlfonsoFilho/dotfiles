# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi

if [ -d $HOME/.dotfiles/bash.d ]; then
  for file in $HOME/.dotfiles/bash.d/*.bash; do
    source $file
  done 
fi