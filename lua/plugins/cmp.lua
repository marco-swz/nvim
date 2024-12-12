return {
	'hrsh7th/nvim-cmp',
	
	config = function()
		local cmp = require'cmp'

		cmp.setup({
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
				end,
			},
			window = {
			},
			mapping = cmp.mapping.preset.insert({
                ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                ['<C-u>'] = cmp.mapping.scroll_docs(4),
                ['<C-l>'] = cmp.mapping(cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }), { 'i', 'c' }),
                ["<C-m>"] = cmp.config.disable,
                ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior }), { 'i', 'c' }),
                ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior }), { 'i', 'c' }),
			}),
			sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' }, 
			}, {
                { name = 'buffer' },
			})
		})

		-- Set configuration for specific filetype.
		cmp.setup.filetype('gitcommit', {
		sources = cmp.config.sources({
			  { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
			}, {
			  { name = 'buffer' },
			})
		})

		-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline({ '/', '?' }, { 
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
			  { name = 'buffer' }
			}
		})

		-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline(':', {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
			  { name = 'path' }
			}, {
			  { name = 'cmdline' }
			})
		})

		-- Toggle auto completion
		cmp.setup {
		  enabled = function()
			return vim.g.cmp_toggle
		  end
		}
	end
}
