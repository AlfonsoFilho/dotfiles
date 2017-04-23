#
# Baed on:
# Gitster theme
# https://github.com/shashankmehta/dotfiles/blob/master/thesetup/zsh/.oh-my-zsh/custom/themes/best.zsh-theme
#
# Requires the `git-info` zmodule to be included in the .zimrc file.

prompt_best_pwd() {
  #prompt_short_dir=$(short_pwd)
  #git_root=$(command git rev-parse --show-toplevel 2> /dev/null) && prompt_short_dir=${prompt_short_dir#${$(short_pwd $git_root):h}/}
  #print -n "%F{white}${prompt_short_dir}"i
  print -n "%F{green}🖿 %~%f"
}

prompt_commit_hash() {
  if [ -d .git ]; then
  
    print -n " %F{bold}[%f%F{yellow}$(git log -1 --pretty=oneline | cut -c -7)%f%F{bold}]%f"
  fi
}

prompt_best_git() {
  [[ -n ${git_info} ]] && print -n "${(e)git_info[prompt]}"
}

prompt_best_precmd() {
  (( ${+functions[git-info]} )) && git-info
}

prompt_best_setup() {
  autoload -Uz colors && colors
  autoload -Uz add-zsh-hook

  prompt_opts=(cr percent subst)

  add-zsh-hook precmd prompt_best_precmd

  zstyle ':zim:git-info' verbose 'yes'
  zstyle ':zim:git-info:branch' format '%b'
  zstyle ':zim:git-info:commit' format '%c'
  zstyle ':zim:git-info:action' format "(%F{yellow}%s%f%F{red})%f"
  #  zstyle ':zim:git-info:clean' format '%F{green}✓'
  zstyle ':zim:git-info:unindexed' format '$F{red}●'
  zstyle ':zim:git-info:untracked' format '$F{red}●'
  zstyle ':zim:git-info:dirty' format '%F{red}●'
  zstyle ':zim:git-info:keys' format \
    'prompt' ' %F{cyan}⎇  %b%c$(prompt_commit_hash) %C%D %s'

  PROMPT="
$(prompt_best_pwd)\$(prompt_best_git)%f 
$ "
  RPROMPT=''
}

prompt_best_setup "$@"
