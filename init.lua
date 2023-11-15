vim.opt.langmap = "hjklHJKLneioNEIO;neioNEIOhjklHJKL"
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.api.nvim_create_user_command('Startlsp', function()
    require('lspconfig').pyright.setup{}
    require('lspconfig').gopls.setup{}
    require('lspconfig').clangd.setup{}
    require('lspconfig').lua_ls.setup{}
    require('lspconfig').tsserver.setup{}
    vim.cmd('edit!')
end, {})


