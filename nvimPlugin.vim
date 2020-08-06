""************************************************************************************""
""****************************PLUGINS*************************************************""
""************************************************************************************""

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'

Plug 'christoomey/vim-system-copy' "precisa do xsel instalado
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'osyo-manga/vim-over'

" Theme
Plug 'ryanoasis/vim-devicons'
Plug 'jnurmine/Zenburn'
Plug 'vim-airline/vim-airline-themes' " Contains zenburn for airline
Plug 'oblitum/rainbow' " Chaces e parenteses coloridos

"quick run para executar pedaços de codigo
Plug 'thinca/vim-quickrun'

"css
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"Markdown view
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

"Ale
Plug 'dense-analysis/ale'

"comment
Plug 'tomtom/tcomment_vim'

Plug 'editorconfig/editorconfig-vim'

"godot
Plug 'habamax/vim-godot'

"JSX
"Image
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"LiveServer
Plug 'turbio/bracey.vim'
"HTML
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
"CSS
Plug 'lilydjwg/colorizer'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()



""************************************************************************************""
""***********************************PLUGINS-CONFIG***********************************""
""************************************************************************************""


let g:vim_jsx_pretty_template_tags = ['html', 'jsx', 'js']

let g:fzf_preview_window = 'right:60%'

"LiveServer
let g:bracey_refresh_on_save = 1
let g:bracey_server_port = 9090
let g:bracey_eval_on_save = 1


"Airline"
let g:airline#extensions#tabline#enabled=1


"emmet
let g:emmet_html5 = 1

"Auto close tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" Rainbow

au FileType c,cpp,objc,objcpp,js,html call rainbow#load()
let g:rainbow_active = 1

let g:rainbow_load_separately = [
      \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
      \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
      \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
      \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
      \ ]

"Instant markdown
"precisa instalar o servidor https://github.com/suan/vim-instant-markdown
let g:instant_markdown_autostart = 0
let g:instant_markdown_port = 8888

"ALE CONFIG
" This sets the option once.

let g:ale_fixers = {'typescript': ['tslint','eslint'], 'javascript': ['eslint']}


autocmd FileType c,cpp setlocal equalprg=clang-format "Programa para Identar codigo C e
"CPP para instalar sudo apt install clang-format"

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
au bufwritepre * :%s/\s\+$//e
match errormsg '\%89v.\+'


let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_liststyle = 3

setlocal autoindent

setlocal cindent

setlocal smartindent

set expandtab

set shiftwidth=2

"deixa a sintaxe mais bonita
nnoremap <c-d> :ALEFix


" give more space for displaying messages.

set cmdheight=2



" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable

" delays and poor user experience.

set updatetime=300



" Don't pass messages to |ins-completion-menu|.

set shortmess+=c



" Always show the signcolumn, otherwise it would shift the text each time

" diagnostics appear/become resolved.

if has("patch-8.1.1564")

  " Recently vim can merge signcolumn and number column into one

  set signcolumn=number

else

  set signcolumn=yes

endif


""************************************************************************************""
""***********************************ATALHOS-PLUGINS**********************************""
""************************************************************************************""

"NERDTree
let g:NERDTreeWinSize=40
let g:Tlist_WinWidth=40
nnoremap <S-F> :NERDTreeToggle<CR>

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'

endfunction



" Use <c-space> to trigger completion.

inoremap <silent><expr> <c-space> coc#refresh()



" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current

" position. Coc only does snippet and additional edit on confirm.

" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.

if exists('*complete_info')

  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

else

  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

endif



" Use `[g` and `]g` to navigate diagnostics

" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.

nmap <silent> [g <Plug>(coc-diagnostic-prev)

nmap <silent> ]g <Plug>(coc-diagnostic-next)



" GoTo code navigation.

nmap <silent> gd <Plug>(coc-definition)

nmap <silent> gy <Plug>(coc-type-definition)

nmap <silent> gi <Plug>(coc-implementation)

nmap <silent> gr <Plug>(coc-references)



" Use K to show documentation in preview window.

nnoremap <silent> K :call <SID>show_documentation()<CR>



function! s:show_documentation()

  if (index(['vim','help'], &filetype) >= 0)

    execute 'h '.expand('<cword>')

  else

    call CocAction('doHover')

  endif

endfunction


" Show all diagnostics.

nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


let NERDTreeShowHidden=1
