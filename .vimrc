call plug#begin('~/.vim/vim-plug')
" Plug 'kien/rainbow_parentheses.vim'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'edwinb/idris2-vim'
    Plug 'tomasr/molokai'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set nocompatible
set cursorline
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
set softtabstop=0
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
if has("termguicolors")
    " fix bug for vim
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum
    " enable true color
    set termguicolors
endif
let g:molokai_original = 1
colorscheme molokai
let &t_ut=''

" " rainbow parentheses
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
