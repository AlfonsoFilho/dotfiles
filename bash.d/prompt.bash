function echo_branch {
    if is_git; then
        echo -e "${blueb}⎇  $(git_branch)${end}"
    fi
}

function echo_commit {
    if is_git; then
        echo -e "[${yellow}$(get_commit_hash)${end}]"
    fi
}

function echo_changes {
    if git_has_changes; then
        echo -e "${red}●${end}"
    fi
}

function echo_stash {
    if git_has_stash; then
        echo -e "${yellow}⚑${end}"
    fi
}

PROMPT_PATH="${green}🖿${end} \w"
PROMPT_GIT=" \$(echo_branch) \$(echo_commit) \$(echo_changes) \$(echo_stash)"
PROMPT_END="\n$ "

export PS1="${PROMPT_PATH}${PROMPT_GIT}${PROMPT_END}"