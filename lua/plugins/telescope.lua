return {
	'nvim-telescope/telescope.nvim',
	
     dependencies = { 
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
	
	config = function()
        local actions = require("telescope.actions")
		require('telescope').setup{
            extensions = {
                fzf = {}
            },
			file_ignore_patterns = {
				'.git/',
				'.cache/',
                '__pycache__/',
				'.history/',
                'venv/',
                'vendor/',
                'node_modules/',
				'%.zip',
				'%.gz',
				'%.png',
				'%.PNG',
				'%.jpeg',
				'%.jpg',
				'%.o',
				'%.a',
				'%.out',
				'%.class',
				'%.pdf',
				'%.exe',
			},
            defaults = {
                layout_strategy = 'flex',
                layout_config = {
                    prompt_position = 'top',
                    horizontal = {
                        preview_width = 0.6,
                    },
                },
                sorting_strategy = "ascending",
                mappings = {
                    i = {
                        ["<C-c>"] = { "<esc>", type = "command" },
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-l>"] = actions.select_default,
                        ["<C-h>"] = actions.close,
                    },
                    n = {
                        ["<C-c>"] = actions.close,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-l>"] = actions.select_default,
                        ["<C-h>"] = actions.close,
                    },
                }
            },
		}

        require("telescope").load_extension("fzf")

		local builtin2 = require('telescope.builtin')
		local keymap = vim.keymap.set

		keymap('n', '<space>f', builtin2.find_files, {})
		keymap('n', '<space>F', builtin2.git_files, {})
		keymap('n', '<space>b', builtin2.buffers, {})
		keymap('n', '<space>?', builtin2.commands, {})
		keymap('n', '<space>/', builtin2.live_grep, {})
		keymap('n', '<space>m', builtin2.marks, {})
		keymap('n', "<space>'", builtin2.resume, {})
		keymap('n', "<space>-", builtin2.resume, {})
		keymap('n', '<space>s', builtin2.current_buffer_fuzzy_find, {})
		keymap('n', '<space>w', builtin2.current_buffer_fuzzy_find, {})
		keymap('n', '<space>W', builtin2.live_grep, {})
        keymap('n', '<space>S', builtin2.live_grep, {})

	end
}
