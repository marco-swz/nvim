local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>f<S-s>', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>f/', builtin.grep_string, {})
vim.keymap.set('n', '<leader>f?', builtin.commands, {})
vim.keymap.set('n', '<leader>fj', builtin.jumplist, {})
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>fm', builtin.marks, {})
vim.keymap.set('n', "<leader>f'", builtin.resume, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require('telescope').setup{
    defaults = {
        layout_strategy = 'cursor',
        layout_config = { height = 0.95 },
    },
}
