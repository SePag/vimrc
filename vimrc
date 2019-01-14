" _      _______ __  __ _____   _____ 
"  \    / /_   _|  \/  |  __ \ / ____|
" \ \  / /  | | | \  / | |__) | |     
"  \ \/ /   | | | |\/| |  _  /| |     
"   \  /   _| |_| |  | | | \ \| |____ 
"    \/   |_____|_|  |_|_|  \_\\_____|
"                                     

" plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'        " lightline status bar
Plug 'Valloric/YouCompleteMe'       " auto-completion engine
Plug 'tmhedberg/SimpylFold'         " smart folding for python
Plug 'tpope/vim-surround'           " add symbols around selection
Plug 'vim-scripts/indentpython.vim' " smart indention for python
Plug 'scrooloose/nerdcommenter'     " quick comment toggeling
" Plug 'nathanaelkane/vim-indent-guides'  " indention guide strips
" Plug 'vim-pandoc/vim-pandoc'        " pandoc vim integration
" Plug 'vim-pandoc/vim-pandoc-syntax' " pandoc syntax support
call plug#end()

" UI config
colorscheme solarized
set background=dark " lets plugins adapt to colorscheme
set number          " show line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line
filetype indent on  " load filetype-specific indent files
filetype plugin on  " load filetype-specific plugin files
set wildmenu        " visual autocomplete for command menu
set lazyredraw      " redraw only when we need to
set showmatch       " highlight matching [{()}]
set noshowmode      " do not show mode, let lightline do that
set autoindent      " copy the indentation from the previous line
set splitright      " open new horizontal split right
set splitbelow      " open new vertical split below
set nowrap          " do not warp long lines
set laststatus=2    " enable lightline status bar

" searching
set incsearch       " search as characters are entered
set ignorecase      " case insensitive search
set smartcase       " use case if any caps used

" folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldmethod=syntax   " fold based on syntax
nnoremap <space> za

" fileformat and encoding
set fileformat=unix
set encoding=utf-8

" spaces and tabs
set expandtab       " tabs are spaces
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces inserted when TAB
set shiftwidth=4    " number of spaces inserted when > or < in normal mode

" syntax
syntax enable
let g:xml_syntax_folding=1  " enable syntax folding for xml files
au BufRead,BufNewFile *.html set filetype=xml   " treat html files as xml files

" key customization
let mapleader = ','
nnoremap <C-k> {
nnoremap <C-j> }
nnoremap <C-l> e
nnoremap <C-h> b
nnoremap <D-l> $

" synchronizing the clipboard register and the default register 
set clipboard^=unnamed

" delete trailing whitespaces
" autocmd BufWritePre * %s/\s\+$//e

" YouCompleteMe Configuration
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" netrw directory browser settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_list_hide= '.*\.swp$,.DS_Store'
if argv(0) ==# '.'
    let g:netrw_browse_split = 0
else
    let g:netrw_browse_split = 4
endif

"autocompletion for filenames like in bash
set wildmenu
set wildmode=longest,list

" configure vim indent guide
" let g:indent_guides_enable_on_vim_startup = 1
" let indent_guides_auto_colors = 0
" let indent_guides_guide_size = 1
" hi IndentGuidesOdd ctermbg=236
" hi IndentGuidesEven ctermbg=237

" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
" set list

