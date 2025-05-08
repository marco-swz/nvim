return {
    "ibhagwan/fzf-lua",

    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function() 
        local fzf = require("fzf-lua")
        fzf.setup{
            -- file_ignore_patterns = { "%.lua$", "%.vim$" }
            files = {
                file_icons = false,
                git_icons = false,
            },
            grep = {
                file_icons = false,
                git_icons = false,
            },
            buffers = {
                file_icons = false,
            },
            git = {
                files = {
                    file_icons = false,
                    git_icons = false,
                },
            },
            lsp = {
                file_icons = false,
                git_icons = false,
                symbols = {
                    symbol_style = 3,
                },
                finder = {
                    file_icons = false,
                },
            },
            diagnostics = {
                file_icons = false,
                git_icons = false,
                diag_icons = false,
            },
            complete_file = {
                file_icons = false,
            },
        }
		local keymap = vim.keymap.set
		keymap('n', '<space>f', fzf.files, {})
		keymap('n', '<space>F', fzf.git_files, {})
		keymap('n', '<space>b', fzf.buffers, {})
		keymap('n', '<space>?', fzf.commands, {})
		keymap('n', '<space>/', fzf.live_grep, {})
		keymap('n', "<space>'", fzf.resume, {})
		keymap('n', "<space>-", fzf.resume, {})
		keymap('n', '<space>s', fzf.lgrep_curbuf, {})
		keymap('n', '<space>e', fzf.lgrep_curbuf, {})
		keymap('n', '<space>E', fzf.live_grep, {})
		keymap('n', '<space>S', fzf.live_grep, {})
    end
}
