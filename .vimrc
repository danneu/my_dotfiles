" =KEYBINDINGS
" ==================================================
let mapleader = ","
inoremap jk <Esc>
inoremap jj <Esc>
" Plugin: Surround
let g:surround_37 = "<% \r %>"
let g:surround_61 = "<%= \r %>"
" Clean whitespace ,W
map <leader>W  :%s/\s\+$//<cr>:let @/=''<CR>
" Change case ,u
nnoremap <leader>u gUiw
inoremap <leader>u <esc>gUiwea
" Substitute
nnoremap <leader>s :%s//<left>
" HTML tag closing
inoremap <C-_> <Space><BS><Esc>:call InsertCloseTag()<cr>a
" Align text
nnoremap <leader>Al :left<cr>
nnoremap <leader>Ac :center<cr>
nnoremap <leader>Ar :right<cr>
vnoremap <leader>Al :left<cr>
vnoremap <leader>Ac :center<cr>
vnoremap <leader>Ar :right<cr>
" Precede next line with the rest of this line
nnoremap K h/[^ ]<cr>"zd$jyyP^v$h"zpJk:s/\v +$//<cr>:noh<cr>j^

" =VUNDLE
" ==================================================
set nocompatible
filetype off
filetype plugin indent on
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle' " Let Vundle manage Vundle
" Github repos
Bundle 'tpop/vim-rails.git'
" Vim-scripts repos
Bundle 'FuzzyFinder'
" Non-Github repos
Bundle 'git://git.wincent.com/command-t.git'

" =BASIC OPTIONS
" ==================================================
set nobackup
set nowritebackup
set noswapfile

set encoding=utf-8
set autoindent
set relativenumber
set clipboard+=unnamed      " Yanks go on clipboard instead.
set history=1000            " Number of things to remember in history.
set noerrorbells            " No noise.
set autowrite               " Writes on make/shell commands
set nu                      " Line numbers on
set timeoutlen=500          " Time to wait after ESC (default=250)
set ruler
set laststatus=2            " Always show status line.
set mouse=a                 " Mouse in all modes


" =TABS, SPACES, WRAPPING
" ==================================================
set wrap
set ts=2                    " Tabs are 2 spaces
set bs=2                    " Backspace over everything in insert mode
set shiftwidth=2
set softtabstop=2
set textwidth=80
set autoindent
set smarttab
set expandtab

" =COLOR SCHEME
" ==================================================
syntax on
set background=dark
colorscheme molokai

" =SEARCHING, MOVEMENT
" ==================================================
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault
" Keep search matches in the middle of the window and pulse the line when moving
" to them
nnoremap n nzzzv:call PulseCursorLine()<cr>
nnoremap N Nzzzv:call PulseCursorLine()<cr>
" Don't move on *
nnoremap * *<c-o>

" =DIRECTIONAL KEYS
" ==================================================
" Easy buffer navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l
noremap <leader>v <C-w>v

" =DIRECTIONAL KEYS
" ==================================================
" Space to toggle folds
nnoremap <Space> za
vnoremap <Space> za
" Make z0 recursively open whatever top level fold we're in no matter where the
" cursor happens to be
nnoremap z0 zCz0
" Use ,z to focus the current fold
nnoremap <leader>z zMzvzz

" =QUICK EDITING
" ==================================================
nnoremap <leader>ev <C-w>s<C-w>j<C-w>L:e $MYVIMRC<cr>


" Better completion
set completeopt=longest,menuone,preview


