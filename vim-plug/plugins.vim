call plug#begin('~/.config/nvim/autoload/plugged')
    "Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    Plug 'tpope/vim-sensible'
 
	" Git Plugins
	Plug 'junegunn/vim-github-dashboard'
	Plug 'junegunn/vim-easy-align'
    Plug 'tpope/vim-fugitive'
    Plug 'kdheepak/lazygit.nvim'
    Plug 'https://github.com/mitchg/nvim.git'
    Plug 'junegunn/gv.vim'
    Plug 'tpope/vim-rhubarb'

    Plug 'preservim/nerdtree'
    "Add filetype specific icons to NERDTree files and folders
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ryanoasis/vim-devicons'       
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-rhubarb'

    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'
    Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-path'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'ctrlpvim/ctrlp.vim'

    " Using a non-default branch
    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
    " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
    Plug 'fatih/vim-go', { 'tag': '*' }
    " Plugin options
    Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

    " Color and highlight 
    Plug 'jacquesg/p5-Neovim-Ext'
    Plug 'joshdick/onedark.vim'

    "A light and configurable statusline/tabline plugin.
    Plug 'itchyny/lightline.vim'
    Plug 'vimwiki/vimwiki'
    "Highly extensible fuzzy finder over lists for Neovim
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate all'}

    "   LSP
    Plug 'nvim-lua/completion-nvim' 
    Plug 'neovim/nvim-lspconfig'

    Plug 'nvim-lua/plenary.nvim'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'voldikss/vim-floaterm'
    Plug 'liuchengxu/vim-which-key'

call plug#end()


