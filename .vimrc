"Line Numbers
set number
set rnu

"Mouse
set mouse=a

"Theme
syntax on
set termguicolors
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
set background=dark

"Cursorline highlight
set cursorline
set cursorcolumn
highlight Cursorline guibg=#2b2b2b
highlight Cursorlolumn guibg=#2b2b2b
set hlsearch

"Clipboard
set clipboard=unnamedplus

"Spaces
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent

"Spliting
set splitright
set splitbelow

"Plugins
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'Yggdroot/indentLine'
call plug#end()

"NerdTree
autocmd VimEnter * NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:indentLine_char='|'

"Key maps
nnoremap <C-a> ggVG
nnoremap <C-q> :q! <LF>
nnoremap <C-n> :NERDTree<CR>
"splits navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
