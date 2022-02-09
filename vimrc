unlet! skipt_defaults_vim
source $VIMRUNTIME/colors/default.vim

syntax enable
set hidden 
set rtp+=~/.fzf

let mapleader=","
let maplocalleader="_"

filetype plugin indent on 
set directory=/tmp
set backupdir=~/.vimbackup
set wildmenu
set wildmode=list:full
color torte
syntax on 
set number
set ruler 
set relativenumber
set visualbell
set encoding=utf-8

set path+=.,**
nnoremap <leader>f :find *
nnoremap <leader>s :sfind *
nnoremap <leader>v :vert sfind *
nnoremap <leader>t :tabfind *

set wildcharm=<C-z>
nnoremap <leader>b :buffer <C-z><S-tab>
nnoremap <leader>B :sbuffer <C-z><S-tab>
nnoremap gb :ls<CR>:b<Space>









