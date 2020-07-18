" Vim Setting
set encoding=utf-8          " Set encoding 
set number relativenumber   " Show line numbers
set showcmd                 " Show partial commands
filetype indent plugin on   " File type detection
syntax on                   " Enable syntax

" Tab Settings
set tabstop=4     " Tab width
set expandtab     " Convert tab to spaces

" Auto Indenting 
set autoindent
set smartindent

" Plugins 

set rtp^=~/.vim/pack/git-plugins/start/**/*.vim

map <C-n> :NERDTreeToggle<CR>  " Map CTRL n to Nerdtree
