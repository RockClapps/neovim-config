vim.opt.langmap = "hjklHJKLneioNEIO;neioNEIOhjklHJKL"
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true

vim.api.nvim_create_user_command('Startlsp', function()
	require('lspconfig').pyright.setup{}
	require('lspconfig').gopls.setup{}
	require('lspconfig').clangd.setup{}
	require('lspconfig').lua_ls.setup{}
	require('lspconfig').tsserver.setup{}
	vim.cmd('edit!')
end, {})

vim.cmd('colorscheme desert')
