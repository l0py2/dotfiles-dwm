local telescope = require('telescope.builtin')

vim.g.mapleader = 'ç'
vim.g.maplocalleader = 'ç'

vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>n', vim.cmd.Ex)
