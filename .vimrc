set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

"Bundles
Plugin 'gmarik/vundle'
Plugin 'jiangmiao/auto-pairs'
Plugin 'wincent/command-t'
Plugin 'gregsexton/MatchTag'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'majutsushi/tagbar'


call vundle#end()
filetype plugin indent on

set term=xterm
syntax on
set backspace=indent,eol,start
set autoindent
set showmatch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.class
set title
set visualbell
set noerrorbells
set nobackup
set nowritebackup
set noswapfile
set incsearch
set ruler laststatus=2 number title hlsearch
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab smarttab

"MAPS
map :tabe :tabnew<CR>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <F7> mzgg=G`z<CR>
