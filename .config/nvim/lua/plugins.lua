local lazy_path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazy_path) then
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable',
		lazy_path
	})
end

vim.opt.rtp:prepend(lazy_path)

require('lazy').setup({
	{
		'catppuccin/nvim',
		name = 'catppuccin',
		priority = 1000
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate'
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = {
			'nvim-tree/nvim-web-devicons'
		}
	},
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim'
		}
	},
	'neovim/nvim-lspconfig',
	{
		'williamboman/mason.nvim',
		dependencies = {
			'williamboman/mason-lspconfig.nvim'
		}
	},
	{
		'L3MON4D3/LuaSnip',
		dependencies = {
			'rafamadriz/friendly-snippets'
		}
	},
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'saadparwaiz1/cmp_luasnip'
		}
	},
	'NMAC427/guess-indent.nvim',
	'jakewvincent/mkdnflow.nvim'
})
