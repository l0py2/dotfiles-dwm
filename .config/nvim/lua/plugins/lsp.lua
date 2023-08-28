local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }
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

mason_lspconfig.setup_handlers {
	function(server_name)
		require('lspconfig')[server_name].setup {
			capabilities = capabilities
		}
	end
}
