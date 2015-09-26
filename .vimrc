" General Settings
set nocompatible
set enc=utf-8
set fileencoding=utf-8
set clipboard=unnamedplus

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

call vundle#end()

filetype plugin indent on

" More general settings (after plugin)
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

syntax on
set background=dark
colorscheme solarized
set laststatus=2

set mouse=a
let g:vim_markdown_folding_disabled=1
let g:airline_theme='solarized'
map <C-n> :NERDTreeToggle<CR>

