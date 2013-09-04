# everything is in .bashrc
source ~/.bashrc

# personal bin folder trumps all
if [ -d ~/.bin ]; then
	export PATH=:~/.bin:$PATH
fi
##
# Your previous /Users/b_outlaw/.bash_profile file was backed up as /Users/b_outlaw/.bash_profile.macports-saved_2012-02-23_at_19:39:37
##

# MacPorts Installer addition on 2012-02-23_at_19:39:37: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/usr/local/share/npm/bin:/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/share/python:/usr/local/bin:~/bin:/opt/local/bin:/opt/local/sbin:/opt/local/lib/postgresql91/bin:/usr/local/lib/node_modules/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

alias ssh-interface=~/bin/ssh-interface.sh

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source /Users/b_outlaw/.rvm/scripts/rvm

export PATH=:/usr/local/bin:$PATH:$HOME/.gem/ruby/1.8/bin

[[ -s /Users/b_outlaw/.nvm/nvm.sh ]] && . /Users/b_outlaw/.nvm/nvm.sh # This loads NVM
