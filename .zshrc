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
# Colour menu output
zstyle ':completion:*:default' list-colors \ 
       ${(s.:.)LS_COLORS}

# Git info
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%B%F{white}%b%f '

# Prompt
autoload -Uz promptinit
promptinit
setopt prompt_subst
PROMPT='%B%F{38}%n%f%F{white}@%f%F{213}%M%f %F{244}%~%f ${vcs_info_msg_0_}%F{38}$%f%b '

# Alias 
alias ls='ls --color=auto' 
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
