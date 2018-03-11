
# Make vim the default editor.
export EDITOR='vim';
export TERM='xterm-256color';

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';


# Node/NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Enable persistent REPL history for `node`.
export NODE_REPL_HISTORY=~/.node_history;
# Allow 32³ entries; the default is 1000.
export NODE_REPL_HISTORY_SIZE='32768';
# Use sloppy mode by default, matching web browsers.
export NODE_REPL_MODE='sloppy';


# JAVA
export JAVA_HOME=/usr/lib/jvm/java-8-oracle

# Andorid Studio
export PATH=$PATH:android-studio/bin

export ANDROID_HOME=~/Android/Sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# Ruby/RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Elixir
export PATH="$PATH:/usr/local/elixir/bin"

# Go
export GOROOT="/usr/local/go"
export PATH="$PATH:$GOROOT/bin"

# Terraform
export PATH="$PATH:/opt/terraform"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"
