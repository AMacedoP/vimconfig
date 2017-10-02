" Alejandro Macedo's .vimrc

set encoding=utf-8         " Set enconding to UTF-8
scriptencoding utf-8
let g:mapleader = ','      " Use , as mapleader

" PLUGINS DECLARATION (vim-plug) {{{
call plug#begin('~/.vim/plugged')

" Airline Powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Latex Preview
Plug 'xuhdev/vim-latex-live-preview'

" Wal colorscheme
Plug 'dylanaraps/wal.vim'

call plug#end()
" }}}

" PLUGINS OPTIONS {{{
" Options for airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wal'

" Options for vim-latex-live-preview
let g:livepreview_previewer = 'zathura'

" Color scheme default and background dark
colorscheme wal
" }}}

" REMAPS AND NEW COMMANDS {{{
" Bindings for saving and closing with saving
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :wq<CR>
nnoremap <Leader>x :q<CR>

" Intuitive behaviour for wrapped lines
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" w!! to write with sudo even if not opened with sudo
cmap w!! w !sudo tee >/dev/null %
" }}}

" AUTO COMMANDS {{{
augroup General
   au!
   " Set spell in markdown and text files
   " autocmd FileType markdown,text setlocal spell

   " Disable comments on new lines
   autocmd FileType * setlocal formatoptions-=cro
augroup END
" }}}

" GENERAL CONFIGURATION {{{
set nocompatible
filetype indent plugin on
syntax on

set clipboard+=unnamedplus " Clipboard for system
set hidden                 " Hide buffers instead of closing them

" UI
set wildmenu
set showcmd
set ruler
set laststatus=2           " Always show status lines
set cmdheight=2
set number                 " Show lines' number
set relativenumber         " Relative numbers

" Intuitive split directions
set splitbelow
set splitright

" Search options
set incsearch
set ignorecase
set smartcase

" Misc
set confirm
set visualbell             " No beep
set noerrorbells           " No beep
set t_vb=

set autoindent             " Auto indent new lines

" Folding with markers
set foldmethod=marker
set foldlevel=99
set foldlevelstart=0

" Use tab as spaces and with a width of 3
set expandtab
set shiftwidth=3
set breakindent            " Softwrapped lines keep indentation
set tabstop=3
set softtabstop=3
" }}}

" EXTENSION CONFIGURATION {{{
" Set *.pl extension to Prolog instead of Perl
let g:filetype_pl="prolog"
" }}}
