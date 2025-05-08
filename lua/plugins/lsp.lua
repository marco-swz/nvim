return {
	"neovim/nvim-lspconfig",
	
	config = function()
		require("mason").setup()

		local lsp = require("lspconfig")
        
        local fzf = require("fzf-lua")

		local opts = { noremap = true, silent = true }

		local on_attach = function(client, bufnr)
			-- Enable completion triggered by <c-x><c-o>
			vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

			local bufopts = { noremap = true, silent = true, buffer = bufnr }
			vim.keymap.set('n', '<space>k', vim.lsp.buf.hover, bufopts)
			-- vim.keymap.set('n', '<C-m>', vim.lsp.buf.signature_help, bufopts)
            -- vim.keymap.set('i', '<C-m>', vim.lsp.buf.signature_help, bufopts)
            vim.keymap.set('n', '<space>K', vim.diagnostic.open_float, bufopts)

            vim.keymap.set('n', '=', function() vim.lsp.buf.format({ async = true }) end, bufopts)
			vim.keymap.set('v', '=', function() vim.lsp.buf.format({ async = true }) end, bufopts)

            vim.keymap.set('n', 'gr', fzf.lsp_references, bufopts)
            vim.keymap.set('n', 'gi', fzf.lsp_implementations, bufopts)
            vim.keymap.set('n', 'gd', fzf.lsp_definitions, bufopts)
            vim.keymap.set('n', 'gy', fzf.lsp_typedefs, bufopts)

            vim.keymap.set('n', '<space>s', fzf.lsp_document_symbols, bufopts)
            vim.keymap.set('n', '<space>S', fzf.lsp_workspace_symbols, bufopts)
            vim.keymap.set('n', '<space>r', vim.lsp.buf.rename, bufopts)
            vim.keymap.set('n', '<space>d', fzf.diagnostics_document, bufopts)
            vim.keymap.set('n', '<space>D', fzf.diagnostics_workspace, bufopts)
            vim.keymap.set('n', '<space>a', fzf.lsp_code_actions, bufopts)

		end

		local lsp_flags = {
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
		--lsp.intelephense.setup {
		--	on_attach = on_attach,
		--	flags = lsp_flags,
		--	capabilities = capabilities,
        --    settings = {
        --        intelephense = {
        --            environment = {
        --                phpVersion = "8.3.0",
        --            },
        --            format = {
        --                braces = "k&r",
        --            },
        --        },
        --    },
		--}
		lsp.phpactor.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
		}
		lsp.clangd.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		}
		lsp.ts_ls.setup {
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
        lsp.nextls.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
            cmd = { "nextls", "--stdio" },
        }
        lsp.nixd.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
        }
        lsp.lemminx.setup {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
        }
	end
}
