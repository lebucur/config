#
# ~/.bash_profile
#

PS1='\W '

HISTCONTROL="ignorespace:ignoredups"
HISTIGNORE="history:ls"
HISTSIZE=10000

buildserver=10.246.6.151
deployserver=10.246.6.122

[[ -f ~/.bashrc ]] && . ~/.bashrc

