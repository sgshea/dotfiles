#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# The One True Text Editor
export EDITOR='nvim'

export PATH="/home/$USER/.local/bin:$PATH"


# alias
alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '
export PATH=$PATH:/home/$USER/.spicetify
