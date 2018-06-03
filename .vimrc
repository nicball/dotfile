set nocompatible
set backspace=indent,eol,start
set backup
set history=50
set ruler
set showcmd
set incsearch
if has('mouse')
  set mouse=a
endif
set hlsearch
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set nowrapscan
set number
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set autowrite
set autoread
set foldmethod=syntax
set foldlevel=6
set hidden
set backupdir=~/.vim/backup
set directory=~/.vim/temp//
set cindent
syntax on
filetype plugin indent on
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
autocmd FileType lhaskell setlocal formatoptions+=ro
