syntax on
colorscheme solarized

set background=dark
set clipboard=unnamed
set hlsearch
set incsearch
set laststatus=1
set noruler
set number
set shiftwidth=4
set t_Co=16
set tabstop=4

if has('gui_running')
	set background=light
	set guifont=Roboto\ Mono\ for\ Powerline:h14
endif

let mapleader = "\<Space>"

nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L> " clear search highlighting
nnoremap <Leader>q :wq<CR>
nnoremap <Leader>w :w<CR>
