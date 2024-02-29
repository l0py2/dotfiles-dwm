local cmp = require('cmp')
local luasnip = require('luasnip')

require('luasnip.loaders.from_vscode').lazy_load()

vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float)

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		local opts = {
			buffer = args.buf
		}

		vim.keymap.set('n', '<leader>d', vim.lsp.buf.hover, opts)
		vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, opts)
	end
})

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'path' },
		{ name = 'buffer' }
	}),
	mapping = cmp.mapping.preset.insert({
		['<C-n>'] = cmp.mapping.select_next_item({ count = 1 }),
		['<C-p>'] = cmp.mapping.select_prev_item({ count = 1 }),
		['<C-Space>'] = cmp.mapping.confirm()
	})
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('mason').setup()
local mason_lspconfig = require('mason-lspconfig')

mason_lspconfig.setup()

mason_lspconfig.setup_handlers({
	function(server_name)
		require('lspconfig')[server_name].setup({
			capabilities = capabilities
		})
	end,
	-- jdtls is managed by nvim-jdtls plugin
	['jdtls'] = function()
	end
})
