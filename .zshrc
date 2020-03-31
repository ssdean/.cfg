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



# Git display
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

zstyle ':vcs_info:git:*' formats '%B%F{white}(%f%F{red}%b%f%F{white})%f '

# Prompt
autoload -Uz promptinit
promptinit
PROMPT='%B[%F{blue}%n%f%F{white}@%f%F{red}%M%f %F{green}%~%f]%b '
PROMPT+=\$vcs_info_msg_0_
PROMPT+='%B%F{yellow}$%f%b '

# Alias 
alias ls='ls --color=auto' 
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
