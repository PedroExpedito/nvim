""************************************************************************************""
""****************************PLUGINS*************************************************""
""************************************************************************************""

call plug#begin('~/.vim/plugged')

"LSP nativo com lua
Plug 'hrsh7th/nvim-compe'
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

"crl + w, m for zoom
Plug 'dhruvasagar/vim-zoom'

"Debugger
Plug 'puremourning/vimspector'

"NERDTree
Plug 'scrooloose/nerdtree'

"QML SYNTHAX
"Plug 'peterhoeg/vim-qml'

"TEX
"Plug 'lervag/vimtex'

"Plug 'ctrlpvim/ctrlp.vim'

Plug 'christoomey/vim-system-copy' "precisa do xsel instalado

"Visual
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'osyo-manga/vim-over'

" Theme
Plug 'ryanoasis/vim-devicons'
Plug 'jnurmine/Zenburn'
Plug 'vim-airline/vim-airline-themes' " Contains zenburn for airline

"quick run para executar pedaços de codigo
"Plug 'thinca/vim-quickrun'

"css
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"Markdown view
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

"comment
Plug 'tomtom/tcomment_vim'

"Editor config
Plug 'editorconfig/editorconfig-vim'

"Plug 'OmniSharp/omnisharp-vim'

call plug#end()


""************************************************************************************""
""***********************************PLUGINS-CONFIG***********************************""
""************************************************************************************""

"vimspector
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
"TEX
"Desabilita alguns warning

let g:vimtex_view_general_viewer = 'mupdf'

let g:vimtex_quickfix_ignore_filters = [
  \'Underfull \\hbox (badness [0-9]*) in paragraph at lines',
  \'Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in paragraph at lines',
  \'Underfull \\hbox (badness [0-9]*) in ',
  \'Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in ',
  \'Package hyperref Warning: Token not allowed in a PDF string',
  \'Package typearea Warning: Bad type area settings!',
  \]

let g:vim_jsx_pretty_template_tags = ['html', 'jsx', 'js']

let g:fzf_preview_window = 'right:60%'


"Airline"
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_splits = 0
let airline#extensions#tabline#show_buffers = 0


"emmet
let g:emmet_html5 = 1

"Auto close tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

"Instant markdown
"precisa instalar o servidor https://github.com/suan/vim-instant-markdown
let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_port = 8888

if !(&term =~ 'linux')
  set t_Co=256 " 256 color
  colorscheme zenburn
  "    remove bg color (use default one, normally transparent for me)
  hi normal ctermfg=188 ctermbg=none
  set cursorline " highlight current line
  let g:airline_powerline_fonts=1 " use powerline arrows
  let g:airline_theme='zenburn'   " nicer theme
else
  colorscheme desert
endif

"au bufwritepre * :%s/\s\+$//e
"Pinta de outra cor as letras quando passa de 80 caracteres
"Muito util para não cansar os olhos.

match errormsg '\%80v.\+'

""************************************************************************************""
""***********************************ATALHOS-PLUGINS**********************************""
""************************************************************************************""

"NERDTree
let g:NERDTreeWinSize=40
let g:Tlist_WinWidth=40
nnoremap <S-F> :NERDTreeToggle<CR>

source ./lua/lsp-config.lua
