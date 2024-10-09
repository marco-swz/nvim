return {
	"neovim/nvim-lspconfig",
	
	config = function()
		require("mason").setup()

		local lsp = require("lspconfig")
        
        local telescope = require('telescope.builtin')

		local opts = { noremap = true, silent = true }

		local on_attach = function(client, bufnr)
			-- Enable completion triggered by <c-x><c-o>
			vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

			local bufopts = { noremap = true, silent = true, buffer = bufnr }
			vim.keymap.set('n', '<C-j>', vim.lsp.buf.hover, bufopts)
			vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
            vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, bufopts)
            vim.keymap.set('n', '<C-l>', vim.diagnostic.open_float, bufopts)

            vim.keymap.set('n', '=', function() vim.lsp.buf.format({ async = true }) end, bufopts)
			vim.keymap.set('v', '=', function() vim.lsp.buf.format({ async = true }) end, bufopts)

            vim.keymap.set('n', 'gr', telescope.lsp_references, bufopts)
            vim.keymap.set('n', 'gi', telescope.lsp_implementations, bufopts)
            vim.keymap.set('n', 'gd', telescope.lsp_definitions, bufopts)
            vim.keymap.set('n', 'gy', telescope.lsp_type_definitions, bufopts)

            vim.keymap.set('n', '<space>s', telescope.lsp_document_symbols, bufopts)
            vim.keymap.set('n', '<space>S', telescope.lsp_workspace_symbols, bufopts)
            vim.keymap.set('n', '<space>r', vim.lsp.buf.rename, bufopts)
            vim.keymap.set('n', '<space>d', function() telescope.diagnostics({ bufnr = 0 }) end, bufopts)
            vim.keymap.set('n', '<space>D', telescope.diagnostics, bufopts)
		end

		local lsp_flags = {
			-- This is the default in Nvim 0.7+
			debounce_text_changes = 150,
		}

		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		lsp.pyright.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		}
		lsp.julials.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		}
		lsp.texlab.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		}
		lsp.gopls.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		}
		lsp.rust_analyzer.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		}
		lsp.intelephense.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
            settings = {
                intelephense = {
                    environment = {
                        phpVersion = "8.3.0",
                    },
                    format = {
                        braces = "k&r",
                    },
                },
            },
		}
		lsp.clangd.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		}
		lsp.tsserver.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
			filetypes = { "javascript", "typescript", "html", "php" }
		}
		lsp.html.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
			filetypes = { "html", "php" }
		}
		lsp.zls.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		}
		lsp.cssls.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		}
		lsp.htmx.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
			filetypes = { "html", "php" }
		}
        lsp.ltex.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
            filetypes = { "markdown", "tex", "bib", "pandoc" }
        }
        if vim.env.ELIXIR_LS then
            lsp.elixirls.setup {
                on_attach = on_attach,
                flags = lsp_flags,
                capabilities = capabilities,
                cmd = { vim.env.ELIXIR_LS .. "/language_server.sh" };
            }
        end
	end
}
