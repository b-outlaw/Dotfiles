# OUTLAW
# features:
#   _ stole this from EFI
#   _ sexy purp (stolen from r2)
#   _ chop cwd to 45 chars

hilite=$fg[green]
purp=$FG[097]

# prompt
PROMPT='
%{$hilite%}[%{$fg[$NCOLOR]%}%B%n%b%{$fb_bold[gray]%}@%{$fg[white]%}%m%{$reset_color%}:%{$purp%}%45<...<%~%<<%{$hilite%}]$reset_color $(git_prompt_info)
→ '
RPROMPT=''

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$hilite%}(%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$hilite%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✱"
