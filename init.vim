""************************************************************************************""
""***************************************VANILLA**************************************""
""************************************************************************************""


set t_Co=256
set autoread
set title
set nocompatible
set showmatch
set path=$PWD
"Comando abaixo é para compartilhar o clipboard com o sistema operacional

"set clipboard=unnamedplus

"Cursor Sempre no meio da tela"
nnoremap j jzz
nnoremap k kzz

set number "exibir numero da linha"
syntax on "deixa colorido as letras

set encoding=UTF-8
set showcmd
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start
set hlsearch
set incsearch
set ignorecase "ignorava maisculas na pesquisa
set smartcase
set autoindent "identa automatico"
set smartindent "faz a identação automatica quando clica no enter"
set mouse= " disable mouse interactions "

"Adiciona o Identação por Tab e shift TAB"
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>
"Seta o maximo de carateres de cada linha usando gq
"O perfeito seria 66 mais as vezes não fica e com 64
"ele força melhor.

setl tw=64

""************************************************************************************""
""***************************************CALL-PLUGINS*********************************""
""************************************************************************************""

source ~/.config/nvim/nvimPlugin.vim

""************************************************************************************""

