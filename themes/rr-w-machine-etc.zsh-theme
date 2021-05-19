local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"

# stole this bit from http://chneukirchen.org/blog/archive/2013/03/10-fresh-zsh-tricks-you-may-not-know.html
#_prompt_and_resched() { sched +1 _prompt_and_resched; zle && zle reset-prompt }
#_prompt_and_resched
#TIME="%D{%H:%M:%S}"

PROMPT='%{$reset_color%}${ret_status}%{$fg_bold[blue]%}$#jobstates %{$fg_bold[green]%}%n@%m %{$fg[cyan]%}%t %{$fg[cyan]%}%~ %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}> '

#RPROMPT='%{$fg[cyan]%}$TIME %{$fg[cyan]%}%~ %{$reset_color%}'
#RPROMPT='%{$fg[cyan]%}%t %{$fg[cyan]%}%~ %{$reset_color%}'


ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[magenta]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"