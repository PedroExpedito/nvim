"Plugins"
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'sheerun/vim-polyglot'
Plug 'christoomey/vim-system-copy' "precisa do xsel instalado
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'osyo-manga/vim-over'

"HTML
Plug 'mattn/emmet-vim' "snips
" Theme

Plug 'jnurmine/Zenburn'
Plug 'vim-airline/vim-airline-themes' " Contains zenburn for airline

" Static check

Plug 'dense-analysis/ale'

Plug 'ricpelo/vim-gdscript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Java Script
" Completion


Plug 'roxma/nvim-yarp'  " required by ncm2
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'  " Buffer word completionn
Plug 'ncm2/ncm2-path'  " Path-completion
Plug 'ncm2/ncm2-jedi'  " Python
Plug 'ncm2/ncm2-pyclang'  " C and C++

" Python

Plug 'michaeljsmith/vim-indent-object'  " Handle intended blocks as text objects
Plug 'alfredodeza/pytest.vim'  " Run pytest from vim.

call plug#end()
"Java script

"Airline"
"
let g:airline#extensions#tabline#enabled=1
"Plugins COnfig"
"
let g:cpp_member_variable_highlight = 1
let g:UltiSnipsExpandTrigger="<C-l>"

"meus comandos"
set autoread
set title
set nocompatible
set showmatch

set path=$PWD./**
"JAVA"



call ale#linter#Define('gd', {
'name': 'godot',
'lsp': 'tcp',
'address': 'localhost:6008',
'project_root': '/',
})



"Adiciona o Identação por Tab e shift TAB"
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>
"end"
nnoremap <S-F> :NERDTreeToggle<CR>
"Cursor Sempre no meio da tela"

nnoremap j jzz
nnoremap k kzz

"end"

set number "exibir linhas"
syntax on "deixa colorido as letras"
set encoding=utf-8
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


autocmd FileType c,cpp setlocal equalprg=clang-format "Programa para Identar codigo C e CPP para instalar sudo apt install clang-format"

colorscheme breezy
if !(&term =~ 'linux')
  set t_Co=256 " 256 color
  colorscheme zenburn
  "    remove bg color (use default one, normally transparent for me)
  hi Normal ctermfg=188 ctermbg=None
  set cursorline " highlight current line
  let g:airline_powerline_fonts=1 " use powerline arrows
  let g:airline_theme='zenburn'   " nicer theme
else
  colorscheme desert
endif

"   clear whitespace before saving
au BufWritePre * :%s/\s\+$//e

"   highlight stuff after column 88

match ErrorMsg '\%89v.\+'

let g:python_host_prog = $HOME . '/.local/nvenv/nvim2/bin/python'
let g:python3_host_prog = $HOME . '/.local/nvenv/nvim3/bin/python'

netrw (vim file manager) setup

let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_liststyle = 3

" disable mouse interactions "
set mouse=

