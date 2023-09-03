local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fj', builtin.find_files, {})
vim.keymap.set('n', '<leader>fk', builtin.git_files, {})
vim.keymap.set('n', '<leader>fl', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>f,', builtin.buffers, {})
vim.keymap.set('n', '<leader>fy', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fu', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>fp', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fm', builtin.commands, {})
vim.keymap.set('n', '<leader>fn', builtin.jumplist, {})
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
vim.keymap.set('n', '<leader>fo', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>f.', builtin.marks, {})
vim.keymap.set('n', "<leader>f'", builtin.resume, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

--require('telescope').setup{
--    defaults = {
--        layout_strategy = 'cursor',
--        layout_config = { height = 0.95 },
--    },
--}
