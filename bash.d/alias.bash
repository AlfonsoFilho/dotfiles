
# Easier Copypaste 
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

alias cl="clear"
alias ls="command ls --color"
alias la="ls -lahFog"
alias mkdir="mkdir -p"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Git
alias gs="git status --short"
alias gc="git checkout"
alias gd="git difftool --no-prompt --extcmd \"icdiff -NH\""
alias gl="git log --oneline --decorate --all --graph"
alias ga="git add ."
alias gcm="git commit"

# Misc
alias findHere="find . -iname "
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias myip="curl http://ipecho.net/plain; echo"
alias top-commands='history | awk "{print $2}" | awk "{print $1}" |sort|uniq -c | sort -rn | head -10'
