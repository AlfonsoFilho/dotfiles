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
  echo -e "Shell: $(echo $0 || $(ps | grep `echo $$` | awk '{ print $4 }'))"
}

function reload() {
  source ~/.bashrc
}

function git_branch() {
  echo -e "$(git rev-parse --abbrev-ref HEAD)"
}

function get_commit_hash() {
  echo -e "$(git log --pretty=format:'%h' -n 1)"
}

function git_has_changes() {
  if [ ! -z "$(git status --short 2> /dev/null)" ]; then
    true
  else
    false
  fi;
}

function git_has_stash() {
  if [ ! -z "$(git stash list 2> /dev/null)" ]; then
    true
  else
    false
  fi;
}

function is_git() {
  if [ -d .git ]; then
    true
  else
    false
  fi;
}