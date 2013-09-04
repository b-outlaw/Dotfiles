# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# run Homebrew profile scripts
for script in /usr/local/etc/profile.d/*.sh; do
  if [ -r $script ]; then
    . $script
  fi
done

# enable git PS1 integration if possible
if [ "`type -t __git_ps1`" = 'function' ]; then
  GIT_PROMPT='$(__git_ps1 " (%s)")'
  GIT_PS1_SHOWDIRTYSTATE=true
fi

# set up named colors
BLACK="\[\033[0;30m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
BROWN="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
LIGHT_GRAY="\[\033[0;37m\]"
GRAY="\[\033[1;30m\]"
LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
YELLOW="\[\033[0;33m\]"
LIGHT_BLUE="\[\033[1;34m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
LIGHT_CYAN="\[\033[1;36m\]"
WHITE="\[\033[0;37m\]"
UNDERLINE="\[\033[4m\]"
NO_COLOUR="\[\033[0m\]"

# outputs a warning if the last command failed
function return_value_indicator {
  if [ $? != 0 ]; then
    echo '!'
  fi
}

# defines what will appear in the command prompt
function prompt {
  PS1="$WHITE\n$RED\$(return_value_indicator)$GREEN\u$WHITE@$CYAN\h$WHITE:$YELLOW\w$RED$GIT_PROMPT$WHITE\n> "
}

# set default commands
export EDITOR=vim
export GIT_EDITOR=vim
export PAGER=less

# set some options to colorize things
export TERM=xterm-color
export CLICOLOR=1
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'

# bash history settings
export HISTCONTROL=ignoredups
export HISTFILESIZE=3000
export HISTIGNORE="ls:cd:[bf]g:exit:..:...:ll:lla"
shopt -s histappend # append to the history file, don't overwrite it

# bash completion settings (actually, these are readline settings)
bind "set bell-style none" # no bell
bind "set show-all-if-ambiguous on" # show list automatically, without double tab

# define some aliases
alias ls='ls -G'  # OS-X SPECIFIC - the -G command in OS-X is for colors, in Linux it's no groups
alias ll='ls -lh'
alias la='ls -lha'
alias ..='cd ..'
alias ...='cd .. ; cd ..'
alias grep='grep -n'
alias rgrep='grep -r'
alias psgrep='ps aux | grep '
alias top='top -o cpu'
alias ducks='du -cksh * | sort -rn|head -11' # Lists folders and files sizes in the current folder
alias desk='cd ~/Desktop'
alias home='cd ~/'
alias sites='cd ~/Sites'
alias worb='cd ~/Sites/world-of-redbull/site'
alias redserver='../env/bin/python manage.py runserver 0.0.0.0:8000'
alias sandbox='cd ~/Desktop/Sandbox/'


# mkdir, cd into it

mkcd () {

mkdir -p "$*"

cd "$*"

}

# set the java root
#export JAVA_HOME=/usr

# set the prompt
prompt

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
