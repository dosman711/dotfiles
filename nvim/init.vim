" Change leader to something easier to use
let mapleader = ','
set timeoutlen=1500
" Syntax Hilighting
syntax on
set encoding=utf-8
set number

set tabstop=2 
set shiftwidth=2 
set softtabstop=2 
set expandtab 
set smarttab

" Smart indenting, based on the typed code.
set smartindent
set autoindent

" Use the system clipboard if available
set clipboard=unnamed

" Allows hidden buffers
set hidden

" Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*
set backup                        " enable backups
set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" Set a pleasing colorscheme
colorscheme delek

" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" Auto-install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Plugins (vim-plug)
call plug#begin()
Plug 'diepm/vim-rest-console'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jelera/vim-javascript-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" NERDTree settings
let NERDTreeCaseSensitiveSort=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=31
let NERDTreeQuitOnOpen=3
nmap <leader>t<space> :NERDTreeToggle<CR>
nmap <leader>tt :NERDTreeFocus<CR>
nmap <leader>tf :NERDTreeFind<CR>
nmap <leader>tc :NERDTreeCWD<CR>
nmap <leader>tr :NERDTreeRefreshRoot<CR>
