local cmp = require('cmp')

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end
	},
	mapping = cmp.mapping.preset.insert({
		['<C-n>'] = cmp.mapping.select_next_item({ count = 1 }),
		['<C-p>'] = cmp.mapping.select_prev_item({ count = 1 }),
		['<C-Space>'] = cmp.mapping.confirm()
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }
	})
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_servers = require('mason-lspconfig').get_installed_servers()

for key, value in pairs(lsp_servers) do
	require('lspconfig')[value].setup {
		capabilities = capabilities
	}
end
