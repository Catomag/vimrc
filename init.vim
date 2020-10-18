call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" syntax
Plug 'nanotech/jellybeans.vim'
Plug 'slim-template/vim-slim'

" clangd
Plug 'octol/vim-cpp-enhanced-highlight'

" rust
Plug 'rust-lang/rust.vim'

" dlang
Plug 'bsed/vim-dlang'
Plug 'idanarye/vim-dutyl'

Plug 'justinmk/vim-syntax-extra'

" webdevelopment
Plug 'digitaltoad/vim-jade'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'

call plug#end()
set encoding=utf-8
set fileencoding=utf-8

set pumheight=10

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set mouse=a

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" search as characters are being entered
set incsearch

" shows matching bracket
set showmatch 

" autocomplete command menu
set wildmenu

" only redraw the screen when you have to
set lazyredraw

call dutyl#register#tool('dcd-client','/usr/bin/dcd-client')
call dutyl#register#tool('dcd-server','/usr/bin/dcd-server')
let g:dutyl_stdImportPaths=['/usr/include/dlang/dmd']

" syntax stuff
syntax on
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1
colorscheme jellybeans
"
" Remaps
"
" move vertically by visual line instead of moving up by literal line

nnoremap j gj
nnoremap k gk

inoremap <C-c> <Esc>

vnoremap < <gv
vnoremap > >gv

map <C-n> :NERDTreeRefreshRoot<CR>:NERDTreeToggle<CR>
map <C-f> :GFiles<CR>
