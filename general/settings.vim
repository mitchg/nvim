set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the
                            " right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
"set wildmode=longest,list   " get bash-like tab completions
set cc=100                   " set an 100 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

" set leader key

syntax enable               " Enables syntax highlighing
set hidden                  " Required to keep multiple buffers 
                            " open multiple buffers
set nowrap                  " Display long lines as just one line
set encoding=utf-8          " The encoding displayed
"set pumheight=10           " Makes popup menu smaller
set fileencoding=utf-8      " The encoding written to file
set ruler              		" Show the cursor position all the time
set cmdheight=2             " More space for displaying messages
set iskeyword+=-            " treat dash separated words as a word text object
set mouse=a                 " Enable your mouse
set splitbelow              " Horizontal splits will automatically be below
set splitright              " Vertical splits will automatically be to right
set t_Co=256                " Support 256 colors
set conceallevel=0          " So that I can see `` in markdown files                           " Insert 2 spaces for a tab
set smarttab                " Makes tabbing smarter will realize you have2vs 4
set smartindent             " Makes indenting smart
set autoindent              " Good auto indent
set laststatus=0            " Always display the status line
set number                  " Line numbers
set cursorline              " Enable highlighting of the current line
"set background=dark        " tell vim what the background color looks like
set showtabline=2           " Always show tabs
"set noshowmode             " We don't need to see stuff like --INSER-- anymore
set nobackup                " This is recommended by coc
set nowritebackup           " This is recommended by coc
set updatetime=300          " Faster completion
set timeoutlen=500          " By default timeoutlen is 1000 ms
set formatoptions-=cro      " Stop newline continution of comments
set clipboard=unnamedplus   " Copy paste between vim and everything else
set autochdir              " Your working directory will always be the same 
set noswapfile                            "as your working directory
set laststatus=3
"au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm 
"alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %
