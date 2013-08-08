PROMPT='%{$fg_bold[green]%}%p %{$fg_bold[red]%}%% %{$reset_color%}'

local git_branch='$(git_prompt_status)%{$reset_color%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"

rvm_prompt='%{$fg[magenta]%}$(rvm-prompt r b g)%{$reset_color%}'

RPROMPT="%{$fg_bold[green]%}%c${rvm_prompt}|${git_branch}"
