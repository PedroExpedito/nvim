"meus comandos"
set autoread
set nocompatible
set showmatch
nnoremap <S-Tab> <<
nnoremap <Alt>: m. + 1 <CR> ==
execute "set <M-j>=\ej"
nnoremap <M-j> 
inoremap <S-Tab> <C-d>

inoremap <A-Up> <Esc>:m-2<CR>
nnoremap <A-Down> :m+<CR>
nnoremap <A-Up> :m-2<CR>
inoremap <A-Down> <Esc>:m+<CR>
set number
set mouse =a
set nu "exibir linhas"
syntax on "deixa colorido as letras"
set encoding=utf-8
set showcmd
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start
set hlsearch
set incsearch
set ignorecase
set smartcase 
set autoindent "identa automatico"
set smartindent "faz a identação automatica quando clica no enter"

nnoremap <c-z> :u<CR>      " Avoid using this**
inoremap <c-z> <c-o>:u<CR>

autocmd FileType c,cpp setlocal equalprg=clang-format "Programa para Identar codigo C e CPP para instalar sudo apt install clang-format" 


