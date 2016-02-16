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
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-expand-region'
Plugin 'rking/ag.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

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

" vim ag config
let g:ag_working_path_mode="r"

" Enable underline
set cursorline
hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue ctermfg=white

" Keymaps
" Map leader to space
let mapleader = "\<Space>"

" Open CtrlP
nnoremap <Leader>o :CtrlP<CR>

" Save
nnoremap <Leader>w :w<CR>

" Copy / Paste
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Vim expand region settings
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Buffer movement
nmap <Leader>n :bp<CR>
vmap <Leader>n :bp<CR>
nmap <Leader>m :bn<CR>
vmap <Leader>m :bn<CR>
nmap <Leader>x :bd<CR>
vmap <Leader>x :bd<CR>

" Git shortcuts, requires vim-fugitive
nmap <Leader>s :Gstatus<CR>
vmap <Leader>s :Gstatus<CR>
nmap <Leader>c :Gcommit<CR>
vmap <Leader>c :Gcommit<CR>

" This eases movement between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Toggle paste
set pastetoggle=<F12>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-d>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
