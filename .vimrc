set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
"Plugin 'valloric/youcompleteme'
Plugin 'morhetz/gruvbox'
call vundle#end()

"General congiguration
"--------------------------------------------------

"mappings
map <f2> :SyntasticCheck<CR>
map <f3> :SyntasticToggleMode<CR>



"indentation
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

"color
"set background=dark
"colorscheme gruvbox

"others
set number
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
setlocal foldmethod=syntax
set encoding=utf-8


"vim plugin configuration
"--------------------------------------------------

"vim-airline configuration

"vim-fugitive configuration

"vim-surround configuration

"nerdtree configuration
map <C-\> :NERDTreeToggle<CR>

"ctrlp.vim configuration
set wildignore+=*/venv/*,*.so,*.swp,*.zip 

"vim-ruby configuration

"syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_ruby_checkers = ['rubocop']

"vimtex configuration


"currently uninstalled"
"--------------------------------------------------

"youcompleteme configuration
"let g:ycm_python_binary_path = '/usr/bin/python3'
