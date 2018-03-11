# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -d $HOME/.dotfiles/bash.d ]; then
  for file in $HOME/.dotfiles/bash.d/*.bash; do
    source $file
  done 
fi