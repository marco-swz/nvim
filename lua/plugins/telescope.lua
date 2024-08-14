return {
	'nvim-telescope/telescope.nvim',
	
     dependencies = { 'nvim-lua/plenary.nvim' },
	
	config = function()
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
		keymap('n', '<space>S', builtin2.live_grep, {})
		keymap('n', '<space>a', builtin2.quickfix, {})

		require('telescope').setup{
			file_ignore_patterns = {
				'.git/',
				'.cache/',
                '__pycache__/',
				'.history/',
                'venv/',
                'vendor/',
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
            },
		}
	end
}
