" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" :source % for sourcing any modification without restarting vim 
" ======================================

set nocompatible              " be iMproved, required
filetype off                  " required


" Plugins management : 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/vim-airline/vim-airline'
Plugin 'https://github.com/vim-airline/vim-airline-themes'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'benmills/vimux'
Plugin 'ap/vim-buftabline'
Plugin 'pearofducks/ansible-vim'
Plugin 'vim-scripts/ZoomWin'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on 

" why not : 
syntax on 
set paste 
set number 
set term=screen-256color
set fenc=utf-8
scriptencoding=utf-8
set encoding=utf-8
set termencoding=utf-8

set nobackup
set path+=**
set nowritebackup 
set noswapfile
set nowrap
set expandtab
set tabstop=4
set undofile
set undodir=~/.vim_undodir
set synmaxcol=1200

set nojoinspaces
set nostartofline
set clipboard+=unnamed
set mouse=a

set history=700
set undolevels=700

set showcmd

set incsearch

set hlsearch

set smartcase


set cursorline
augroup cline
  au!
  au WinLeave * set nocursorline
  au WinEnter * set cursorline
  au InsertEnter * set nocursorline
  au InsertLeave * set cursorline
augroup END
set visualbell
set wildmenu
set lazyredraw
set showmatch
set colorcolumn=80
highlight ColorColumn ctermbg=0*
set scrolloff=8
set scrolljump=5
set sidescroll=1
set sidescrolloff=15




map \ :set invlist<CR>
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:␣
set showbreak=↪

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" customizing file explorer : 
let g:netrw_browse_split = 2 
let g:netrw_banner = 0 
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
"  autocmd VimEnter * :Vexplore
augroup END

 
"saving cursor position : 
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END
au BufNewFile,BufRead /dev/shm/gopass.* setlocal noswapfile nobackup noundofile
au BufRead,BufNewFile ~/work/ansible-infra/*.yml set filetype=ansible
"buftabline shortcuts: 

nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(10)

nnoremap <silent> <C-w>w :ZoomWin<CR>
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

let g:ansible_attribute_highlight = "ob"
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1

set wildignore+=*.pyc,*.o,*.obj
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=*_build/*
set wildignore+=*/coverage/*



map <F10> :SyntasticToggleMode<CR>
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_error_symbol='E'
let g:syntastic_warning_symbol='W'
let g:syntastic_check_on_wq=0
let g:syntastic_check_on_open=1
let g:syntastic_enable_perl_checker = 1
let g:syntastic_sh_shellcheck_checker = 1
let g:syntastic_sh_checkers = ['bashate', 'shellcheck']




" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane
map <Leader>vz :VimuxZoomRunner<CR>



" split navigation:
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
