syntax on
inoremap jk <Esc>
inoremap kj <Esc>
set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
set signcolumn=yes
set hidden
set scrolloff:8
set autoread

highlight ColorColumn ctermbg=0 guibg=lightgrey

" Run :so % to suorce current file
" Run :PlugInstall to install plugins
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = " "

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <leader>p "+p
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
nnoremap Y y$

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-j> <esc>:m .+1<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
