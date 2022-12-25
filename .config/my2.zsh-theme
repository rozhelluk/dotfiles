PROMPT=$'
%{$fg[cyan]%}%~%{$reset_color%}$(git_prompt_info)$(bzr_prompt_info) 
$root_user'

#%{$fg[white]%}$%{$reset_color%} 
DALLAS_PROMPT_CHAR_="%{$fg[white]%}%(!.#.%%)%{$reset_color%}"
root_user="%{%(#~$fg[red]~$fg[white])%}%#%{$fg[default]%} "

GIT_CB="git::"
ZSH_THEME_SCM_PROMPT_PREFIX="%{$fg[yellow]%}|"
ZSH_THEME_GIT_PROMPT_PREFIX=$ZSH_THEME_SCM_PROMPT_PREFIX$GIT_CB
ZSH_THEME_GIT_PROMPT_SUFFIX="|%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
