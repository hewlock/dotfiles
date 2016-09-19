" To install run:
" :PlugInstall
call plug#begin()
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

syntax on
colorscheme solarized

set background=dark
set clipboard=unnamed
set hlsearch
set incsearch
set laststatus=2
set noruler
set number
set shiftwidth=4
set t_Co=16
set tabstop=4

let g:ctrlp_cmd = 'CtrlPBuffer'
let g:lightline = {
	\ 'colorscheme': 'solarized',
	\ 'separator': { 'left': '', 'right': '' },
	\ 'subseparator': { 'left': '', 'right': '' }
	\ }

if has('gui_running')
	set background=light
	set guifont=Roboto\ Mono\ for\ Powerline:h14
	set guioptions-=L
	set guioptions-=R
	set guioptions-=b
	set guioptions-=l
	set guioptions-=r
endif

let mapleader = "\<Space>"

nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L> " clear search highlighting
nnoremap <Leader>q :wq<CR>
nnoremap <Leader>w :w<CR>
