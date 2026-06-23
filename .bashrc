[[ $- != *i* ]] && return

cd ~

HISTSIZE=5000
HISTFILESIZE=10000
HISTCONTROL=ignoredups:erasedups

shopt -s histappend
shopt -s checkwinsize

set -o vi

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

stty -ixon

export EDITOR=micro
export VISUAL=micro
alias mic='micro'

alias editrc='micro ~/.bashrc'
alias edithypr='micro ~/.config/hypr/hyprland.conf'
alias editbar='micro ~/.config/waybar/style.css'
alias editbarconf='micro ~/.config/waybar/config.jsonc'
alias editprofile='micro ~/.bash_profile'
alias editfuzzel='micro ~/.config/fuzzel/fuzzel.ini'
alias editmako='micro ~/.config/mako/config'
alias sourcerc='source ~/.bashrc'

alias l='ls --color=auto'
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias la='ls -A'
alias lla='ls -la'

alias grep='grep --color=auto'
alias ping='ping https://google.com'
alias storage='df -h'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias clr='clear'
alias c='clear'

alias mkdir='mkdir -p'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -iv'

alias jcl='sudo journalctl -xe'
alias jcb='sudo journalctl -b'
alias jcf='sudo journalctl -f'

alias dmsg='dmesg --human --color=always'
alias dmsgt='dmesg --human --color=always -T'

alias p='ps aux | grep'
alias h='history | grep'

alias ports='ss -tulpen'
alias df='df -h'
alias free='free -h'
alias notitest='~/.local/bin/notitest'


RESET="\[\e[0m\]"

USERC="\[\e[38;5;145m\]"
ATC="\[\e[38;5;240m\]"
HOSTC="${USERC}"
INC="\[\e[38;5;242m\]"
TIMEC="\[\e[38;5;245m\]"
ARROW="\[\e[38;5;145m\]"

PROMPT_COMMAND='pwd > ~/.lastdir'

if [[ -f ~/.lastdir ]]; then
    cd "$(cat ~/.lastdir)" 2>/dev/null
fi

PS1='\[\e[38;2;23;147;209m\]󰣇 \[\e[38;5;250m\]\u@\h \[\e[38;5;245m\]in\[\e[38;5;250m\] \w\n\[\e[97m\]❯ \[\e[0m\]'
