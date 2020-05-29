#
# ~/.bash_profile
#

PS1='\W '

HISTCONTROL="ignorespace:ignoredups"
HISTIGNORE="history:ls"
HISTSIZE=10000

[[ -f ~/.bashrc ]] && . ~/.bashrc

