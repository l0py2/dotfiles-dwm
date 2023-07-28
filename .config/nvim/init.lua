require('plugins')
require('plugins.treesitter')
require('plugins.lualine')
require('plugins.lsp')
require('plugins.cmp')
require('mappings')

vim.o.number = true
vim.o.relativenumber = true

vim.o.cursorline = true

vim.o.expandtab = false
vim.o.shiftwidth = 6
vim.o.tabstop = 6
vim.o.softtabstop = 0

vim.o.autoindent = true

vim.cmd.colorscheme('nord')

vim.o.signcolumn = 'yes'
