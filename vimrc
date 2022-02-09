" custom .vimrc 
" need to create ~/.vimbackup in order to work without warning. 
" need also installation of fzf for fuzzy search

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

nnoremap <leader>j :tjump /

set wildignore=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=tags
set wildignore+=*.tar.*

augroup VIMRC
  autocmd!

  autocmd BufLeave *.css  normal! mC
  autocmd BufLeave *.html normal! mH
  autocmd BufLeave *.js   normal! mJ
  autocmd BufLeave *.php  normal! mP
  autocmd BufLeave *.yml  normal! mY
augroup END



