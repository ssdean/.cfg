HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v

# Default editor
export EDITOR="vim"
export VISUAL="vim"

# Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/steven/.zshrc'
# Tab for arrow navigation in autocomplete menu
zstyle ':completion:*' menu select
# Colour menu output
zstyle ':completion:*:default' list-colors \ 
       ${(s.:.)LS_COLORS}

# Git info
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{244}%s [%F{38}Branch%f:%F{213}%b%f%F{244}]%f'

# Prompt
autoload -Uz promptinit
promptinit
setopt prompt_subst
PROMPT='%B%F{38}%n%f%F{256}@%f%F{213}%M%f %F{244}%~%f %F{38}$%f%b '
RPROMPT='${vcs_info_msg_0_}'

# Alias 
alias ls='ls --color=auto' 
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
