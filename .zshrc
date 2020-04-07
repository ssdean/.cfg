# Colors
C1=38   # User
C2=213  # Host
C3=244  # Dir

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v

# Default editor
export VISUAL="vim"

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
zstyle ':vcs_info:git:*' formats '%F{$C3}%s [%F{$C1}Branch%f:%F{$C2}%b%f%F{$C3}]%f'

# Prompt
autoload -Uz promptinit
promptinit
setopt prompt_subst
PROMPT='%B%F{$C1}%n%f%F{white}@%f%F{$C2}%M%f %F{$C3}%~%f %F{$C1}$%f%b '
RPROMPT='${vcs_info_msg_0_}'

# Alias 
alias ls='ls --color=auto' 
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
