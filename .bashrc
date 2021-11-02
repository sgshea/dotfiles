#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# The One True Text Editor
export EDITOR='nvim'

export PATH="/home/sammy/.local/bin:$PATH"


# alias
alias ls='ls --color=auto'

# University's java styling code checker
alias checkstyle='/home/sammy/Documents/Courses/CSC116/cs-checkstyle/checkstyle'


PS1='[\u@\h \W]\$ '
