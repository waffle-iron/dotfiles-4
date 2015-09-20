" A minimal vimrc for new vim users to start with.
"
" Original Author:  Bram Moolenaar <Bram@vim.org>
" Owner:            Aphichat Panjamanee 
" Last change:      2015 Sep 19
"
" Addons wishlist (learn without addons first)
"
" https://github.com/tpope/vim-surround
" https://github.com/kien/ctrlp.vim
"
"
" If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Vundle
" https://github.com/gmarik/vundle
" See the :h vundle Vimdoc for more details.
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
set autoindent

" Wrapping code to 80 cols
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" View relative line number
" set relativenumber
set number

" Show column numbers
set ruler

" Use tabs 2 spaces
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Highlight search results
set hlsearch

" No swap files, use version control instead
set noswapfile

" NERDtree opens when ctrl+n
map <C-n> :NERDTreeToggle<CR>
