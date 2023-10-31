local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fh', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fj', builtin.find_files, {})
vim.keymap.set('n', '<leader>fk', builtin.git_files, {})
vim.keymap.set('n', '<leader>fl', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>fb', builtin.commands, {})
vim.keymap.set('n', '<leader>f;', builtin.commands, {})

vim.keymap.set('n', '<leader>fy', builtin.buffers, {})
vim.keymap.set('n', '<leader>fu', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>fo', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fp', builtin.lsp_document_symbols, {})

vim.keymap.set('n', '<leader>fn', builtin.jumplist, {})
vim.keymap.set('n', '<leader>fm', builtin.marks, {})
vim.keymap.set('n', '<leader>f,', builtin.keymaps, {})
vim.keymap.set('n', "<leader>f.", builtin.resume, {})

--require('telescope').setup{
--    defaults = {
--        layout_strategy = 'cursor',
--        layout_config = { height = 0.95 },
--    },
--}
