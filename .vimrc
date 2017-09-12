" .vimrc from Alejandro Macedo
"
"
" Color scheme default and background dark
colorscheme default
set background=dark

" Disabling features from the distro
set nocompatible

" Attempt to determine the type of a file based on its filename
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Another options
set hidden
set wildmenu
set showcmd
set autoindent
set ruler
set laststatus=2
set incsearch
set confirm
set visualbell
set t_vb=
set cmdheight=2
set number " Show lines' number
set relativenumber " Relative numbers

" Set tab spacing
set expandtab
set shiftwidth=3
set tabstop=3
set softtabstop=3

" Set *.pl extension to Prolog instead of Perl
let g:filetype_pl="prolog"

" PLUGINS SECTION
call plug#begin('~/.vim/plugged')

" Airline Powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ying17zi/vim-live-latex-preview'

call plug#end()

" Options for airline
let g:airline_powerline_fonts = 1
