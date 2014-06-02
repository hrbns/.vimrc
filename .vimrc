set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'git://github.com/joonty/myvim.git'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'derekwyatt/vim-scala'
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line
"
syntax on
colo molokai
let mapleader=" "

" Stuff
:set nu
:set hidden
:set laststatus=2
:set hlsearch
:set expandtab " tabs replaced with spaces
:set tabstop=4
:set shiftwidth=4

" Load any custom configuration
if filereadable(".vim.custom")
    so .vim.custom
endif

" Fluff
hi StatusLine ctermbg=10 ctermfg=0 

" Gvim

:set guioptions-=M "remove menu
:set guioptions-=m "remove menu
:set guioptions-=T "remove toolbar
:set guioptions-=L "remove left scrollbar

" NERDTree

let NERDTreeShowHidden=1

" Mappings 

:imap jj <Esc>
:nmap <Leader>w :w<cr>
:nmap <Leader>a :bprevious<cr>
:nmap <Leader>s :bnext<cr>
:nmap <Leader>d :Bclose<cr>
:nmap <Tab> :NERDTreeToggle<cr>
:nmap <Leader>o :NERDTree<cr>
:nmap <Leader>j <C-w><C-w>
:nmap <Leader>p "*p
:nmap <Leader>/ <Leader>c<space>
:vmap <Leader>/ <Leader>c<space>
