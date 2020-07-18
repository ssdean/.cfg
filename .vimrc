" Vim Setting
set encoding=utf-8          " Set encoding 
set number relativenumber   " Show line numbers
filetype indent plugin on   " File type detection
syntax on                   " Enable syntax

" Tab Settings
set tabstop=4     " Tab width
set expandtab     " Convert tab to spaces

" Auto Indenting 
set autoindent
set smartindent

" Plugins 
set rtp^=~/.vim/pack/git-plugins/start/**/*.vim  " Path to plugins

" Nerdtree
map <C-n> :NERDTreeToggle<CR>                    " Map CTRL n to Nerdtree

" Airline
let g:airline#extensions#tabline#enabled = 1     " Tabable airline
let g:airline_theme='powerlineish'               " Airline theme
let g:airline_powerline_fonts = 1                " Enable powerline fonts
set noshowmode                                   " Don't show mode (Airline already shows it) 
