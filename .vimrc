" /etc/vimrc (configuration file for vim only)
" Author Joseph A. Russino 
" commented lines start with `"'



" Configuration options for Joe Russino:
syntax on                       " enable syntax highlighting
set nocompatible                " turn off vi compatibility
set showmode                    " always show what mode we're currently in
set nowrap                      " don't wrap lines
set tabstop=2                   " tab = 2 spaces
set softtabstop=2               " when using <backspace>, treat 2 spaces as a tab
set expandtab                   " expand tabs into spaces
set shiftwidth=2                " number of spaces to use when autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set autoindent                  " automatically indent
set copyindent                  " copy previous indenting on autoindent
set number                      " always show line numbers
set showmatch                   " show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
                                " case-sensitive otherwise
set scrolloff=5                 " keep 5 lines off the edges of the screen when scrolling
set nohlsearch                  " turn off highlighting for searched expressions
set incsearch                   " highlight as we search, however
set matchtime=5                 " blink matching cars for .x seconds
set textwidth=120               " 120 columns limit
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
set paste                       " don't indent each line when pasting
set ruler                       " show line numbers on the left side
                                " note: this only seems to work if placed after 'set paste'

filetype plugin on              " enable loading of plugins for particular filetypes

" Persistent undo
set undofile                    " save undos after file closes
set undodir=$HOME/.vim/undo     " where to save undo histories
set undolevels=1000             " how many undos to save
set undoreload=10000            " number of lines to save for undo

set autochdir                   " when opening a file in a buffer, chdir to the location of that file
