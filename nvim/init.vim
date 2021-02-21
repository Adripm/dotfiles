"## Basic Vim commands ##
":set nocompatible
":set relativenumber
set number
set incsearch
set hlsearch
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set laststatus=2
set nolist
syntax on

"## Custom Keybindings ##
"+-------------------------------------+
"## Buffer navigation ##
" Control + Keys  -> Move between buffers
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-H> <C-W><C-H>
noremap <C-L> <C-W><C-L>

"## Tab navigation ##
" Control-N and Control-M  -> Move between tabs
noremap <C-N> gT
noremap <C-M> gt

"## Page navigation ##
" Alt-J and Alt-K  -> Move page up and down
noremap <S-j> 3<C-E>
noremap <S-k> 3<C-Y>

"## Other ##

" u: undo
"'U: redo
noremap <S-U> <C-R>

" Vim commands
noremap . :

"## NERDTree ##
noremap <M-q> :NERDTreeToggle<CR>
"+-------------------------------------+

" ## Polyglot plugin settings - Syntax highlighter ##
let g:polyglot_disabled = ['autoindent']

"## VimPlug ##
call plug#begin()

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'joshdick/onedark.vim'
	Plug 'preservim/nerdTree'
	Plug 'sheerun/vim-polyglot'
	Plug 'tpope/vim-fugitive'
	Plug 'jiangmiao/auto-pairs'
	Plug 'ghifarit53/tokyonight-vim'

call plug#end()

"## Themes ##
":set guifont=Fira_Code"
let g:onedark_termcolors=256
"## Truecolor support ##
if (has("termguicolors"))
	set termguicolors
endif
let g:airline_theme='onedark'
colorscheme onedark

"## Airline Customization ##
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

"## Tabline ##
let g:airline#extensions#tabline#enabled = 1
" --> For straight tabline separators
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

"## Special Characters ##
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = '' "
let g:airline_left_alt_sep = '' "
let g:airline_right_sep = '' "
let g:airline_right_alt_sep = '' "
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"## Status line ##

"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%t' " Only name will be printed, not path
let g:airline_section_y = '' " Disable encoding section
let g:airline_section_z = '' " Disable file position section
let g:airline_section_warning = '' " Disable warning section
let g:airline_inactive_collapse = 1 " Collapse inactive windows left status bar
let g:airline_skip_empty_sections = 1 " Do not draw separators for empty sections

let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#bufferline#enabled = 0

"## Other configurations ##
" Matching brackets and parenthesis highlighting
hi MatchParen	gui=bold		guibg=#2C323C		guifg=cleared
"## Opacity ##
" Background color is determined by terminal
hi Normal		ctermbg=NONE	guibg=NONE
hi LineNr		ctermbg=NONE	guibg=NONE
hi SignColumn	ctermbg=NONE	guibg=NONE

" Automatically remove all tralling whitespace on save
autocmd BufWritePre * %s/\s\+$//e
