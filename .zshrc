# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd nomatch
unsetopt beep extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sammy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# zplug
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
# plugins

zplug "zdharma-continuum/fast-syntax-highlighting"
zplug "plugins/git",    from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Load theme file
zplug "sbugzu/gruvbox-zsh", as:theme


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
# end zplug

# alias

