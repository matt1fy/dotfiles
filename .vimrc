" PLUGINS ---------------------------------------------------------------- {{{

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" Vim Plug Manager
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-eunuch'
Plug 'ap/vim-css-color'

call plug#end()

let g:airline_powerline_fonts = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" let g:airline_theme='atomic'
let g:NERDTreeFileLines = 1

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu
:set cursorline
:set cursorcolumn
:set linebreak
":set textwidth=0
":set wrapmargin=0
":set wrap!
:set incsearch

" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd! matchit
endif

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" tbh i dont really wanna do mappings, just raw dog so i can use vim anywhere
" even on other peoples systems. Unless it's a common remap.

inoremap jj <esc>
nnoremap <space> :
" Set backslash as leader key
let mapleader = "\""

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup vimrcEx
  au!

" For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=80
augroup END

" When started as "evim", evim.vim will already have done these settings, bail out.
if v:progname =~? "evim"
  finish
endif

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

" Switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  set hlsearch
endif

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SR = "\e[3 q" 			" Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" 	" Block in normal mode
    let &t_SI = "\e[3 q"                     	" blink underline
endif

set rtp+=/usr/local/opt/fzf

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" }}}
