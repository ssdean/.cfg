" Vim Setting

" Add directories to path
set rtp^=~/.vim/pack/**/*.vim " Path to plugins

" Enable true colours
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"  " Foreground colour?
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum" " Background colour? (Removes opacity)
set termguicolors              " Display colorschemes correctly

" Settings
syntax on                      " Enable syntax
set autoindent                 " Auto bracket indenting
set encoding=utf-8             " Set encoding 
set number relativenumber      " Show line numbers (Relative to cursor)
set wildmenu                   " Vim command tab completion
set tabstop=4                  " Tab width
set expandtab                  " Convert tab to spaces
set showmatch                  " Flash matching bracket when closing brackets 
" let ayucolor="mirage"
colorscheme base16-onedark     " Set colors

" Plugins
packl          " Load all plugins in start dir of rtp (runtimepath)

" Nerdtree
map <C-n> :NERDTreeToggle<CR>    " Map CTRL n to Nerdtree

" Language CLient (Language specific syntax highlighting)
let g:LanguageClient_serverCommands = { 
    \ 'haskell': ['haskell-language-server-wrapper', '--lsp'], 
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ }

" Ensure visual highlighting is active (Must come after theme settings)
highlight Visual cterm=reverse 

