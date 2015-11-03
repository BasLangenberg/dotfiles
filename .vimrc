" General Settings
set nocompatible
set enc=utf-8
set fileencoding=utf-8
set clipboard=unnamedplus

" Tabs setup
set expandtab
set shiftwidth=2
set softtabstop=2

" Plugins
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/syntastic'

call vundle#end()

filetype plugin indent on

" More general settings (after plugin)
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

" Colours, Syntax, Etc
syntax on
set background=dark
colorscheme solarized
set laststatus=2
let g:airline_theme='solarized'

" Enable mouse, cause I occasionally touch it anyway
set mouse=a

" Disable markdown folding, it's unworkable for me
let g:vim_markdown_folding_disabled=1

" Open NERDTree /w <C-n>
map <C-n> :NERDTreeToggle<CR>

" Make vim-airline display the open buffers by filename only
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
