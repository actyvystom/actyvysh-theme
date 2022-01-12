(( $+functions[battery_pct_prompt] )) || function battery_pct_prompt { }
BLUEBOLD="\033[38;5;33;1m"
END="\033[0m"
PROMPT='$(echo $BLUEBOLD)❅ actyvysh ⇢ %3~ ⇢$(git_prompt_info)$(svn_prompt_info)$($HOME/.config/zsh/git-parser.sh)
$(echo $BLUEBOLD)► $(echo $END)%'
PROMPT=$(echo $PROMPT | gsed 's/(base) //')
# PROMPT='$(shrink_path -f) $($HOME/.config/zsh/git-parser.sh)%(?..%F{red})%(!.#.>)%f '
ZSH_THEME_GIT_PROMPT_PREFIX=" ⎇ %{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$(echo $BLUEBOLD) ⇢ "

ZSH_THEME_SVN_PROMPT_PREFIX=" %{$reset_color%}%{$fg[white]%}svn:%{$fg_bold[white]%}/"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$fg_bold[green]%}]-"
