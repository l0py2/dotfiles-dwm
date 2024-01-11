local g = vim.g
local keymap = vim.keymap

g.mapleader = 'ç'
g.maplocalleader = 'ç'

keymap.set('n', '<leader>n', vim.cmd.Explore)
