"Plugins"
call plug#begin('~/.vim/plugged')
Plug 'calviken/vim-gdscript3'
Plug 'ervandew/supertab' 
Plug 'calviken/vim-gdscript3'
Plug 'christoomey/vim-system-copy' "precisa do xsel instalado
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'osyo-manga/vim-over'

" Theme
Plug 'jnurmine/Zenburn'
Plug 'vim-airline/vim-airline-themes' " Contains zenburn for airline

" Static check
Plug 'dense-analysis/ale'

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
"Plugins COnfig"
let g:cpp_member_variable_highlight = 1
  
let g:ale_gdscript3_godotheadless_executable = '/home/pedro/Documentos/Godot_v3.2.1-stable_mono_linux_server_64/Godot_v3.2.1-stable_mono_linux_server.64' 
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
"meus comandos"
set autoread
set nocompatible
set showmatch
nnoremap <S-Tab> <<
nnoremap <Alt>: m. + 1 <CR> ==
execute "set <M-j>=\ej"
nnoremap <M-j> 
inoremap <S-Tab> <C-d>

nnoremap j jzz
nnoremap k kzz

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

"Desabilita setinhas"

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
"Usa O Ctrl + Z achei meio inutil"

"nnoremap <c-z> :u<CR>      " 
"inoremap <c-z> <c-o>:u<CR>"

autocmd FileType c,cpp setlocal equalprg=clang-format "Programa para Identar codigo C e CPP para instalar sudo apt install clang-format" 


