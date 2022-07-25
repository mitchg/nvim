


source $HOME/.config/nvim/vim-plug/plugins.vim

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim



" General configuration section
set nocompatible
filetype on
set number
""""""""""""""""""""""""""""""""""""""
"""Test
""lua <<EOF
""print('hello from lua')
""EOF

""lua require ('basic')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim') && executable('nvr')
  let $GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif

"lua require('config') 
autocmd vimenter * ++nested colorscheme onedark

let g:lightline = { 'colorscheme': 'onedark',}
let g:onedark_use_term_italics = 1
let g:python3_host_prog = '/usr/bin/python3.10'

"hurray

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Telescope 
"
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"   Floaterm
let g:floaterm_keymap_toggle =  '<F1>'
let g:floaterm_keymap_next =    '<F2>'
let g:floaterm_keymap_prev =    '<F3>'
let g:floaterm_keymap_new =     '<F4>'

let g:floaterm_gitcommit='floaters'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

" Set floaterm window background to gray once the cursor moves out from it
hi FloatermNC guibg=gray
" Set floaterm window's background to black
hi Floaterm guibg=black
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=orange guifg=cyan


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Which-key.nvim
" key configurations
" Map leader to which_key
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger' ]
let g:which_key_map['S'] = [ ':Startify'                  , 'start screen' ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " Nerdtree  
    " Basic key mappings

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-c> :NERDTreeClose<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Register which key map
call which_key#register('<Space>', "g:which_key_map")

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
lua require('lua_config')
let g:completion_enable_fuzzy_match = 1
set completeopt=menuone,noinsert,noselect

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Lazygit

let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
"let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   completion-nvim

lua require 'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
"Use completion-nvinm in every buffer.
autocmd BufEnter * lua require'completion'.on_attach()


" Set completeopt to have a beteter completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

"By default other snippets are disabled unless specified as below.
let g:completion_enable_snippet = 'snippets.nvim'

let g:completion_enable_auto_popup = 0
imap <tab> <Plug>(completion_smart_tab)

" Confirm completion    
let g:completion_confirm_key = "\<C-y>"

"Auto hover is called by default 
let g:completion_enable_auto_hover =1

let g:completion_matching_smart_case = 1


