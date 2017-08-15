
# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

alias cl="clear"
alias ls="ls -G"
alias la="ls -lahFog"
alias mkdir="mkdir -p"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Git
alias gs="git status"
alias gc="git checkout"
alias gd="git difftool --no-prompt --extcmd \"icdiff -NH\""
alias gl="git log --oneline --decorate --all --graph"
alias ga="git add ."
alias gcm="git commit"
