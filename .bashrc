#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#history
shopt -s histappend
HISTCONTROL=ignoreboth  # don't log duplicate lines or lines starting with space
HISTSIZE=65535
HISTFILESIZE=102400

#env
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;32m\]» \[\e[1;32m\]\u \[\e[1;30m\][at]\[\e[1;32m\] \H\[\e[1;30m\]╺─╸\[\e[1;30m\][\[\e[1;32m\]\w\[\e[1;30m\]]\[\e[0;32m\]\n\$ \[\e[0m\]'
export EDITOR='vim'
eval $(keychain --eval --agents ssh -Q --quiet)

#colored man page
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

#alias
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias grep='grep --color=auto'
alias pacman='sudo pacman'
alias win7='vboxmanage startvm "Win7"'
alias jnc-sync='sudo cp /etc/hosts /etc/jnpr-nc-hosts.bak'
alias mirror-stats='curl -s http://f.archlinuxvn.org/archlinux/status.json ; curl -s http://arm.f.archlinuxvn.org/status.json'