set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle.vim
"set foldenable
set foldmethod=indent
"set nofoldenable
"set foldnestmax=10
"set foldlevel=1
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
Plugin 'itchyny/lightline.vim'
Plugin 'Lokaltog/powerline-fonts'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tmhedberg/SimpylFold' 
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdcommenter'
Plugin 'goatslacker/mango.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'

call vundle#end()
filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set term=xterm
syntax on
color mango
set backspace=indent,eol,start
set autoindent
set showmatch
set t_Co=256
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
set guifont=Inconsolata\ for\ Powerline:h15
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
scriptencoding utf-8
set encoding=utf-8
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste'  ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified'  ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': ''  },
      \ 'subseparator': { 'left': '', 'right': ''  }
      \ }

let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1

"MAPS
map :tabe :tabnew<CR>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <F7> mzgg=G`z<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-nt> :NERDTreeTabsToggle<CR>
