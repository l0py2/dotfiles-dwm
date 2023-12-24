local g = vim.g
local keymap = vim.keymap

g.mapleader = 'ç'
g.maplocalleader = 'ç'

keymap.set('n', '<leader>n', vim.cmd.Explore)

local telescope = require('telescope.builtin')

keymap.set('n', '<leader>ff', telescope.find_files, {})
keymap.set('n', '<leader>fd', telescope.lsp_definitions, {})
keymap.set('n', '<leader>fs', telescope.lsp_document_symbols, {})
