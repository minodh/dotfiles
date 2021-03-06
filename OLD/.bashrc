#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

## Enable color on ls and grep
alias ls='ls --color=auto'
alias grep='grep --color=auto'

## Add .local/bin to path
export PATH="${HOME}/.local/bin:${PATH}"

if [[ -d "${HOME}/.cargo/bin" ]]; then
    export PATH="${HOME}/.cargo/bin:${PATH}"
fi

## Set prompt
export PS1="\u@\[\e[37m\]\h\[\e[m\]:\[\e[32m\]\w\[\e[m\]\[\e[31m\]\\$\[\e[m\] "
