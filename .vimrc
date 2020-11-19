" Vim Setting
syntax on                   " Enable syntax
filetype indent plugin on   " File type detection
set encoding=utf-8          " Set encoding 
set number relativenumber   " Show line numbers (Relative to cursor)
set wildmenu                " Vim command tab completion
set tabstop=4               " Tab width
set expandtab               " Convert tab to spaces
set autoindent              " Auto indent
set smartindent             " Use smart indentation (After certain key words and characters)
set showmatch               " Flash matching bracket when closing brackets 
colorscheme delek           " Set colorsi. delek, koehler, murphy

" Plugins
set rtp^=~/.vim/pack/git-plugins/start/**/*.vim       " Path to plugins
set rtp^=~/.vim/pack/git-plugins/start/**/docs/*.txt  " Path to plugin docs
packl                                                 " Load all plugins in start dir of rtp (runtimepath)

" Nerdtree
map <C-n> :NERDTreeToggle<CR>                         " Map CTRL n to Nerdtree
