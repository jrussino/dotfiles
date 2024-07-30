" /etc/vimrc (configuration file for vim only)
" Author Joseph A. Russino 
" commented lines start with `"'



" Configuration options for Joe Russino:
syntax on                       " enable syntax highlighting
set nocompatible                " turn off vi compatibility
set showmode                    " always show what mode we're currently in
set nowrap                      " don't wrap lines
set expandtab                   " expand tabs into spaces
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set autoindent                  " automatically indent
set copyindent                  " copy previous indenting on autoindent
set showmatch                   " show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
                                " case-sensitive otherwise
set scrolloff=5                 " keep 5 lines off the edges of the screen when scrolling
set nohlsearch                  " turn off highlighting for searched expressions
set incsearch                   " highlight as we search, however
set matchtime=5                 " blink matching cars for .x seconds
set textwidth=79                " columns limit
set fo+=t                       " enable textwrapping in formatoptions
set showcmd                     " shows what you are typing as a command
set wildmenu                    " tab completion
set wildmode=list:longest,full
set backup
set backupdir=~/.vim/backups
set hidden                      " hide buffers when they are abandoned
set autoread                    " watch for file changes
set history=1000                " keep a long command history
set lazyredraw                  " don't redraw on macros
set whichwrap+=<,>,h,l,[,]      " backspace and cursor keys wrap too
set visualbell                  " no annoying sounds

set clipboard=unnamed           " share yank registers (copy and paste from one terminal to another)
set backspace=indent,eol,start  " allow backspacing over everything in insert mode 
"set paste                       " don't indent each line when pasting
filetype plugin on              " enable loading of plugins for particular filetypes

" Persistent undo
set undofile                    " save undos after file closes
set undodir=$HOME/.vim/undo     " where to save undo histories
set undolevels=1000             " how many undos to save
set undoreload=10000            " number of lines to save for undo

set autochdir                   " when opening a file in a buffer, chdir to the location of that file


" Temporary for 2019-03-24
" set spell

" Status line - added 2019-04-10
set laststatus=2

set tags=./tags;,tags;        " search for tags files upward from the current directory until one is found

" Tabs to spaces - added 2019-09-09
let spaces_per_tab=2            " just change this one
let &tabstop=spaces_per_tab     " tab = this many spaces
let &softtabstop=spaces_per_tab " when using <backspace>, treat this many spaces as a tab
let &shiftwidth=spaces_per_tab  " number of spaces to use when autoindenting


" Line number management
set ruler                       " view line numbers on the left side
set number                      " show line numbers
set relativenumber              " show line numbers relative to the current line
let numbermode=1                " 0 = line numbers off, 1 = line numbers on "

" commands to enable/disable line numbers
command Non set number relativenumber | let numbermode=1
command Noff set nonumber norelativenumber | let numbermode=0

" Use relative (hybrid) numbers in command mode, absolute numbers in insert mode
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * if (numbermode == 1) | set relativenumber | endif
	autocmd BufLeave,FocusLost,InsertEnter * if (numbermode == 1) | set norelativenumber | endif
augroup END
