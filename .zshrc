setopt prompt_subst
setopt histignorealldups

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v

# Default editor
export EDITOR="vim"
export VISUAL="vim"

# Completion
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/steven/.zshrc'

autoload -Uz compinit
compinit

# Use syntax highlighting
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Use history substring search
source $HOME/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# Use autosuggestion
source $HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'


# Git info
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{244}%s [%F{38}branch%f:%F{213}%b%f%F{244}]%f'

# Prompt
autoload -Uz promptinit
promptinit
PROMPT='%B%F{38}%n%f%F{256}@%f%F{213}%M%f %F{244}%~%f %F{38}$%f%b '
RPROMPT='${vcs_info_msg_0_}'

# Alias 
alias ls='ls --color=auto' 
alias ip='ip -c'
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias i3cfg='/usr/bin/git --git-dir=$HOME/.config/i3/.i3cfg/ --work-tree=$HOME'
