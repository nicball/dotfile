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
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    filetype plugin indent on
endif
syntax on
set hlsearch
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set nowrapscan
set number
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set cindent
set autowrite
set autoread
set foldmethod=syntax
set foldlevel=6
set nomagic
set hidden
set backupdir=~/.vim/backup
set directory=~/.vim/temp//
