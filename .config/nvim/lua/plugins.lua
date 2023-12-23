local function ensure_packer()
	local fn = vim.fn

	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})

		vim.cmd [[packadd packer.nvim]]
		
		return true
	end

	return false
end

local packer_bootstrap = ensure_packer()

local packer = require('packer')

packer.startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'catppuccin/nvim',
		as = 'catppuccin'
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'nvim-tree/nvim-web-devicons',
			opt = true
		}
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		}
	}

	use 'neovim/nvim-lspconfig'

	use {
		'williamboman/mason.nvim',
		requires = {
			'williamboman/mason-lspconfig.nvim'
		}
	}

	use {
		'L3MON4D3/LuaSnip',
		requires = {
			'rafamadriz/friendly-snippets'
		}
	}

	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'saadparwaiz1/cmp_luasnip'
		}
	}

	use 'nmac427/guess-indent.nvim'

	use 'vimwiki/vimwiki'
	
	if packer_bootstrap then
		packer.sync()
	end
end)
