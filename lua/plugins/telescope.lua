return {
	'nvim-telescope/telescope.nvim',
	
     dependencies = { 'nvim-lua/plenary.nvim' },
	
	config = function()
		local builtin2 = require('telescope.builtin')
		local keymap = vim.keymap.set

		keymap('n', '<space>fy', builtin2.live_grep, {})
		keymap('n', '<space>fu', builtin2.lsp_references, {})
		keymap('n', '<space>fi', builtin2.lsp_implementations, {})
		keymap('n', '<space>fo', builtin2.lsp_definitions, {})
		keymap('n', '<space>fp', builtin2.lsp_type_definitions, {})

		keymap('n', '<space>fh', builtin2.current_buffer_fuzzy_find, {})
		keymap('n', '<space>fj', builtin2.find_files, {})
		keymap('n', '<space>fk', builtin2.diagnostics, {})
		keymap('n', '<space>fl', builtin2.git_files, {})
		keymap('n', '<space>fb', builtin2.commands, {})
		keymap('n', '<space>f;', builtin2.commands, {})
	  
		keymap('n', '<space>fn', builtin2.marks, {})
		keymap('n', '<space>fm', builtin2.buffers, {})
		keymap('n', '<space>f,', builtin2.keymaps, {})
		keymap('n', "<space>f.", builtin2.resume, {})

		require('telescope').setup{
			file_ignore_patterns = {
				'.git',
				'.cache',
				'.history',
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
                layout_strategy = 'horizontal',
                layout_config = {
                    prompt_position = 'top',
                },
                sorting_strategy = "ascending",
            },
		}
	end
}
