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

" new line 
nnoremap <S-Enter> o<Esc>
inoremap <S-Enter> <Esc>o

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

" Because vsvim doesn't support expressions, 
" I can't differentiate between the three different visual modes. 
" Because yanking and pasting works differently between visual modes, 
" surrounding can only work in one. 
" For flexibility, surrounding is built for visual mode. 
" To surround in visual line mode, just highlight using visual mode. 
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
nnoremap <leader>h :nohl<CR>h 

" yank to end of line (like C and D)
nnoremap Y y$
" highlight to end of line (use vv to preserve V to enter Visual Line)
nnoremap vv v$

" paste last yanked text 
nnoremap <leader>p "0p
nnoremap <leader>P "0P

" copy to / paste from system clipboard register
noremap <leader>c "+y
noremap <leader>v "+p