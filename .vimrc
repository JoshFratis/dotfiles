set scrolloff=20
set timeoutlen=250
set visualbell

set incsearch
set hlsearch
set ignorecase
set smartcase

set relativenumber
set number

inoremap jk <Esc>

let mapleader = " "
nnoremap <Space> <NOP>

" format on paste
" xnoremap p p=']
" nnoremap <leader>= 

" break line
nnoremap <C-j> i<Enter><Esc>

" surround
nnoremap <leader>( ciw()<Esc>P
nnoremap <leader>) ciw()<Esc>P
nnoremap <leader>{ ciw{}<Esc>P
nnoremap <leader>} ciw{}<Esc>P
nnoremap <leader>[ ciw[]<Esc>P
nnoremap <leader>] ciw[]<Esc>P
nnoremap <leader>" ciw""<Esc>P
nnoremap <leader>' ciw''<Esc>P
nnoremap <leader>* c**<Esc>P
vnoremap <leader>( c()<Esc>P
vnoremap <leader>) c()<Esc>P
vnoremap <leader>{ c{}<Esc>P
vnoremap <leader>} c{}<Esc>P
vnoremap <leader>[ c[]<Esc>P
vnoremap <leader>] c[]<Esc>P
vnoremap <leader>" c""<Esc>P
vnoremap <leader>' c''<Esc>P
vnoremap <leader>* c**<Esc>P

" clear highlighting
nnoremap <leader>h :nohl<CR> 

" yank to end of line 
nnoremap Y y$

" highlight to end of line 
nnoremap V v$
nnoremap vv V