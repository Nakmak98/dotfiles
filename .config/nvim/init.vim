"              _                    _     _____ _____ 
"             | |                  | |   |  _  |  _  |
"  _ __   __ _| | ___ __ ___   __ _| | __| |_| |\ V / 
" | '_ \ / _` | |/ / '_ ` _ \ / _` | |/ /\____ |/ _ \ 
" | | | | (_| |   <| | | | | | (_| |   < .___/ / |_| |
" |_| |_|\__,_|_|\_\_| |_| |_|\__,_|_|\_\\____/\_____/
" 
" My simple config file for Neovim
" 

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set relativenumber          " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set nobackup
set noswapfile
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set path+=**                " searches current directory recursively
set mouse=n                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set fileencodings=koi8-r,ucs-bom,utf-8,default,latin1
set splitbelow splitright
" Plugins section

call plug#begin(stdpath('data') . '/plugged')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'rking/ag.vim'
call plug#end()

" Mappings for split movements
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-l> <C-w>l
map <C-h> <C-w>h
" Map for fzf search launch
map <C-f> :Files<CR>
" Map ii for switch to Normal mode
:imap ii <Esc>
:tnoremap ii <C-\><C-n>
