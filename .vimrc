let mapleader = " "
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

" format on paste
nnoremap p p=']

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
vnoremap <leader>( c()<Esc>P
vnoremap <leader>) c()<Esc>P
vnoremap <leader>{ c{}<Esc>P
vnoremap <leader>} c{}<Esc>P
vnoremap <leader>[ c[]<Esc>P
vnoremap <leader>] c[]<Esc>P
vnoremap <leader>" c""<Esc>P
vnoremap <leader>' c''<Esc>P

" clear highlighting
nnoremap <leader>h :nohl<CR> 

""" Rider
if has('ide')
	"" -- Map IDE actions to IdeaVim -- https://jb.gg/abva4t
	" Action List: https://gist.github.com/zchee/9c78f91cc5ad771c1f5d
	"" Example: Map \b to toggle the breakpoint on the current line
	" map \b <Action>(ToggleLineBreakpoint)
	" map :action <action from action list> <CR> "CR means carriage return (enter)

	" .ideavimrc is a configuration file for IdeaVim plugin. It uses
	"   the same commands as the original .vimrc configuration.
	" You can find a list of commands here: https://jb.gg/h38q75
	" Find more examples here: https://jb.gg/share-ideavimrc

	" Highlight copied text
	Plug 'machakann/vim-highlightedyank'
	" Commentary plugin
	Plug 'tpope/vim-commentary'
endif

""" Visual Studio
if exists('g:vscode')
	nnoremap <leader>r :vsc Refactor.Rename<CR>

	map gd :vsc Edit.GoToDefinition<CR>
	map gi :vsc Edit.GoToImplementation<CR>
	map gr :vsc Edit.FindAllReferences<CR>
	map gp :vsc Edit.PeekDefinition<CR>

	map <C-l> :vsc Window.NextTab<CR>
	map <C-h> :vsc Window.PreviousTab<CR>
	map <C-T> :vsc Window.RestoreClosedTab<CR> 
	map <C-w> :vsc Window.CloseDocumentWindow<CR> 
	map <C-w> :vsc Window.CloseAllTabs<CR> 

	map <C-s> :vsc File.SaveAll<CR>
	map <C-S> :vsc File.SaveAll<CR>
	inoremap <C-s> <Esc>:vsc File.SaveAll<CR>a
	inoremap <C-S> <Esc>:vsc File.SaveAll<CR>a

	map <C-m> :vsc Edit.NextMethod<CR>
	map <C-M> :vsc Edit.PreviousMethod<CR>

	map <C-n> :vsc View.NextError<CR>
	map <C-N> :vsc View.PreviousError<CR>
endif
