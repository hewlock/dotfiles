" To install run:
" :PlugInstall
call plug#begin()
Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
call plug#end()

syntax on
silent! colorscheme solarized

set background=dark
set history=1000
set hlsearch
set incsearch
set laststatus=2
set listchars=tab:→\ ,eol:↩︎,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set nobackup
set noruler
set nowrap
set number
set shiftwidth=4
set showbreak=↪\
set t_Co=16
set tabstop=4
set undolevels=1000

let &t_EI = "\e[2 q"
let &t_SI = "\e[5 q"
let g:lightline = { 'colorscheme': 'solarized' }
let mapleader = "\<Space>"

nnoremap <Leader><Space> :noh<CR>
nnoremap <Leader>n :set number!<CR>
nnoremap <Leader>p :set paste!<CR>
nnoremap <Leader>w :set list!<CR>
