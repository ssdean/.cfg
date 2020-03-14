# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/steven/.zshrc'


autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

# Default editor
export VISUAL="vim"

# Tab for arrow navigation in autocomplete menu
zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors \ 
       ${(s.:.)LS_COLORS}

autoload -Uz promptinit
promptinit

# Custom prompt
prompt='%B[%F{4}%n%f%F{7}@%f%F{1}%M%f %F{2}%~%f]$%b '

# Alias 

alias ls='ls --color=auto' 
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
