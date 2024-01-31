local builtin2 = require('telescope.builtin')
local keymap = vim.keymap.set

keymap('n', '<space>fh', builtin2.lsp_workspace_symbols, {})
keymap('n', '<space>fj', builtin2.find_files, {})
keymap('n', '<space>fk', builtin2.diagnostics, {})
keymap('n', '<space>fl', builtin2.git_files, {})
keymap('n', '<space>fb', builtin2.commands, {})
keymap('n', '<space>f;', builtin2.commands, {})
              
keymap('n', '<space>fy', builtin2.buffers, {})
keymap('n', '<space>fu', builtin2.lsp_references, {})
keymap('n', '<space>fi', builtin2.lsp_implementations, {})
keymap('n', '<space>fo', builtin2.grep_string, {})
keymap('n', '<space>fp', builtin2.lsp_document_symbols, {})
                           
keymap('n', '<space>fn', builtin2.jumplist, {})
keymap('n', '<space>fm', builtin2.marks, {})
keymap('n', '<space>f,', builtin2.keymaps, {})
keymap('n', "<space>f.", builtin2.resume, {})

require('telescope').setup{
    file_ignore_patterns = {
        '.git/',
        '.cache/',
        '.history/',
        '%.zip',
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
    }
}
