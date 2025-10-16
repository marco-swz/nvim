return {
	"neovim/nvim-lspconfig",
	
	config = function()
		require("mason").setup()

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

		vim.lsp.config('pyright', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		})
		vim.lsp.config('julials', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		})
		vim.lsp.config('texlab', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		})
		vim.lsp.config('gopls', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		})
		vim.lsp.config('rust_analyzer', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		})
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
		vim.lsp.config('phpactor', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
		})
		vim.lsp.config('clangd', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		})
		vim.lsp.config('ts_ls', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
			filetypes = { "javascript", "typescript", "html", "php" }
		})
		vim.lsp.config('html', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
			filetypes = { "html", "php" }
		})
		vim.lsp.config('zls', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		})
		vim.lsp.config('cssls', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities
		})
        vim.lsp.config('ltex', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
            filetypes = { "markdown", "tex", "bib", "pandoc" }
        })
        vim.lsp.config('nextls', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
            cmd = { "nextls", "--stdio" },
        })
        vim.lsp.config('nixd', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
        })
        vim.lsp.config('lemminx', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
        })
        vim.lsp.config("tinymist", {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
            cmd = { "tinymist" },
            filetypes = { "typst" },
        })
		vim.lsp.config('harper_ls', {
			on_attach = on_attach,
			flags = lsp_flags,
			capabilities = capabilities,
            filetypes = { "typst", "markdown", "text", "bib" },
            settings = {
                ["harper-ls"] = {
                    userDictPath = "",
                    workspaceDictPath = "",
                    fileDictPath = "",
                    linters = {
                        SpellCheck = true,
                        SpelledNumbers = false,
                        AnA = true,
                        SentenceCapitalization = true,
                        UnclosedQuotes = true,
                        WrongQuotes = false,
                        LongSentences = true,
                        RepeatedWords = true,
                        Spaces = true,
                        Matcher = true,
                        CorrectNumberSuffix = true
                    },
                    codeActions = {
                        ForceStable = false
                    },
                    markdown = {
                        IgnoreLinkTitle = false
                    },
                    diagnosticSeverity = "hint",
                    isolateEnglish = false,
                    dialect = "American",
                    maxFileLength = 120000,
                    ignoredLintsPath = {}
                }
            }
		})


        vim.lsp.enable({
            'pyright',
            'julials',
            'texlab',
            'rust_analyzer',
            'ltex',
            'html',
            'ts_ls',
            'gopls',
            'zls',
            'clangd',
            'phpactor',
            'nextls',
            'nixd',
            'cssls',
            'lemminx',
            'tinymist',
            'harper_ls',
        })
	end
}
