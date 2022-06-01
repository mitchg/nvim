local lsp = require('lspconfig')
local completion = require ('completion')

local custom _attach = function()
	completion.on_attach()
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

lsp.pylsp.setup{on_attach=custom_attach} 
