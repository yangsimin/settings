let mapleader=" "
syntax on
set number
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set ruler

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>  

nmap s <nop>
nmap S :w<CR>
nmap Q :q<CR>
nmap R :source $HOME/.vimrc<CR>
nmap <LEADER><ESC> :nohlsearch<CR>
nmap n nzz
nmap N Nzz

nmap H ^
nmap J 5j
nmap K 5k
nmap L g_
onoremap H ^
onoremap L g_
vmap J 5j
vmap K 5k
vmap H ^
vmap L g_
vmap y y'>