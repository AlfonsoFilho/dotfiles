#!/usr/bin/env bash

function about() {
  
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
  
  echo -e "OS: $(uname -srv)"
  echo -e "Arch: $(uname -p)"
  echo -e "$(lsb_release -a)"
  echo -e "NVM: $(nvm --version)"
  echo -e "Node: $(node -v)"
  echo -e "NPM: $(npm -v)"
  echo -e "Yarn: $(yarn --version)"

}

# Create a new directory and enter it
function mk() {
  mkdir -p "$@" && cd "$@"
}