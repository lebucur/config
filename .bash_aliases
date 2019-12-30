
alias tmx=tmux
alias tmx-at='tmux at -t 0'

alias gi=git

alias vi=vim

alias l='ls'
alias ll="ls -lh"
alias la="ls -A"
alias lla="ls -la"
alias llf="ls -la |grep -i"
alias lsdir="ls -R"
alias lsr="ls -R"
alias tre=tree

alias a=./a.out

alias src-alias='source ~/.bash_aliases'
alias sra=src-alias
alias cat-alias='cat ~/.bash_aliases'

alias ..='cd ..'
alias ...='cd ../..'
alias r='cd ..; cd -'

alias mank='man -k'

alias clr=clear
alias xx=exit

alias pscpu='ps auxf | sort -nr -k 3 | head -10'
alias psmem='ps auxf | sort -nr -k 4 | head -10'

alias grepp="grep -Rnsi --color"

alias sys-sii="clear; journalctl -xe |grep sii-ctrl --color"

alias make="clear; make"

findf() 
{
    find 2>&1 -iname "*$1*" ${@:2} | grep -v "Permission denied"
}

weather() 
{
    curl -s wttr.in/$1
}

man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;38;5;74m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[46;30m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[04;38;5;146m' \
    man "$@"
}


