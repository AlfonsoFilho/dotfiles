#!/usr/bin/env bash

apt-get update -yq

apt-get install -yq \
  tig \
  httpie \
  tree \
  htop \
  tree  


#
# icdiff
#
curl -s https://raw.githubusercontent.com/jeffkaufman/icdiff/release-1.9.0/icdiff | sudo tee /usr/local/bin/icdiff > /dev/null 
sudo chmod ugo+rx /usr/local/bin/icdiff
