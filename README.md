# How to clone
Guide on how to clone my config files and setup to continue tracking configs on a new machine.

### Create alias
`alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

### Ignore source directory
`echo ".cfg" >> .gitignore`

### Clone into bare repo
`git clone --bare --recurse-submodules https://github.com/ssdean/.cfg.git $HOME/.cfg`

### Load submodules
`cfg submodule update --init`

### Checkout files
`cfg checkout`

### Don't show untracked files
`cfg config --local status.showUntrackedFiles no`

