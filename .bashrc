# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
unset rc

PS1="\e[1;36m\u\e[m\e[1;97m@\e[m\e[1;95m\h\e[m \e[2;97m\w\e[m \e[1;93m\$\e[m "

bind 'set show-all-if-ambiguous on'
bind 'set completion-ignore-case on'
bind 'set colored-stats on'
bind 'TAB:menu-complete'

# Alias
alias ls='ls --color=auto'
alias ip='ip -c'
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias i3cfg='/usr/bin/git --git-dir=$HOME/.config/i3/.i3cfg/ --work-tree=$HOME/.config/i3/'

