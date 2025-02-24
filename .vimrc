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

" set rtp+=/usr/local/opt/fzf
set rtp+=/opt/homebrew/opt/fzf

syntax on
set t_Co=256
set term=screen-256color " required for tmux
":set termguicolors

set title
set nocompatible
set ttyfast
set laststatus=2
set scrolloff=10 " Lines of text around cursor
set number
set shell=zsh
set mouse=a
set nolazyredraw " Don't redraw while executing macros
set showmatch " Show matching braces
set noshowmode " Don't show which mode disabled for PowerLine
set autoread " Detect when a file is changed
set cmdheight=1
set tm=350 " Timeout length of key combination presses
set mat=1 " How many tenths of a second to blink

set ignorecase " Enable ignore case
set smartcase " When using caps, ignore ic

" Indent and tab control
set autoindent
set smartindent
set expandtab
set smarttab " Tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " The Visible width of tabs
set softtabstop=4 " Edit as if the tabs are 4 characters wide
set shiftwidth=4 " Number of spaces to use for indent and unindent
set shiftround " Round indent to a multiple of 'shiftwidth'

" Better command-line completion
set wildmode=longest,list
set wildmenu

" Yanking will paste directly to the clipboard
set clipboard^=unnamed,unnamedplus
" set paste toggle
set pastetoggle=<leader>v

" Folding
set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=20
let g:vim_markdown_folding_disabled=1 " Markdown
let javaScript_fold=1                 " JavaScript
let perl_fold=1                       " Perl
let php_folding=1                     " PHP
let r_syntax_folding=1                " R
let ruby_fold=1                       " Ruby
let sh_fold_enabled=1                 " sh
let vimsyn_folding='af'               " Vim script
let xml_syntax_folding=1              " XML

autocmd BufRead,BufNewFile *.cql set filetype=cql

" Except Markdown
autocmd FileType mkd set sw=4
autocmd FileType mkd set sts=4

" To list special characters
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,nbsp:+
set listchars+=trail:-
set showbreak=↪

" Airline stuff
let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1 " AirlineRefresh to clear
":let g:airline_statusline_ontop=1
"let g:airline_theme='papercolor'
let g:airline_theme='violet'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
    endif

" NERD lol
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeFileLines = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeShowBookmarks = 1

" turn hybrid line numbers on
set number relativenumber
set nu rnu
set cursorline
set cursorcolumn
hi CursorLine term=bold cterm=bold
hi CursorLine ctermbg=237
hi CursorColumn ctermbg=237
set linebreak
set incsearch

" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd! matchit
endif

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Leader keys
let mapleader = "<space>"
nmap <space>w :w!<cr>
nmap <space>x :x!<cr>
nmap <space>q :q<cr>
nmap <space>qq :qa<cr>
nmap <space>[ :set background=light<cr> :hi CursorColumn ctermbg=251<cr> :hi CursorLine ctermbg=251<cr>
"nnoremap <space>[[ :hi CursorColumn ctermbg=251<cr> :hi CursorLine ctermbg=251<cr>
nmap <space>] :set background=dark<cr> :hi CursorColumn ctermbg=237<cr> :hi CursorLine ctermbg=237<cr>
"nnoremap <space>]] :hi CursorColumn ctermbg=237<cr> :hi CursorLine ctermbg=237<cr>
nnoremap <space>\ :source ~/.vimrc<cr>
nnoremap <space>/ :nohlsearch<cr>
nnoremap <space><c-f> :FZF -e<cr>

nnoremap <space>bi <s-b><s-i>
nnoremap <space><space> :
nnoremap <space><space><tab> :!
nnoremap o o<esc>
nnoremap O O<esc>
nnoremap n nzz
nnoremap N Nzz
nnoremap Y y$
nnoremap <space>c vwhy
nnoremap <space>v vwhp

inoremap jj <esc>
inoremap kk <esc>
inoremap <space><cr> <esc>

" Temp leader strings

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
    let &t_SR = "\e[3 q"                		" Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" 	" Block in normal mode
    let &t_SI = "\e[3 q"                     	" blink underline
endif


" }}}


" STATUS LINE ------------------------------------------------------------ {{{

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
au WinLeave * set nocursorcolumn
au WinEnter * set cursorcolumn

" }}}
