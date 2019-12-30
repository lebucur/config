#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL="ignorespace:ignoredups"
export HISTIGNORE="history:ls"
export HISTSIZE=10000

