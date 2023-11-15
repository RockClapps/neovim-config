local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--require("lazy").setup(plugins, opts)

require("lazy").setup{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},

  "neovim/nvim-lspconfig",
}

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


