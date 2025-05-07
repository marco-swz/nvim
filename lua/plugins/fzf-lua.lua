return {
    "ibhagwan/fzf-lua",

    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function() 
        local fzf = require("fzf-lua")
        fzf.setup{
          -- winopts = { ...  },     -- UI Options
          -- keymap = { ...  },      -- Neovim keymaps / fzf binds
          -- actions = { ...  },     -- Fzf "accept" binds
          -- fzf_opts = { ...  },    -- Fzf CLI flags
          -- fzf_colors = { ...  },  -- Fzf `--color` specification
          -- hls = { ...  },         -- Highlights
          -- previewers = { ...  },  -- Previewers options
          -- SPECIFIC COMMAND/PICKER OPTIONS, SEE BELOW
          -- files = { ... },
        }
		local keymap = vim.keymap.set
		keymap('n', '<space>f', fzf.files, {})
		keymap('n', '<space>F', fzf.git_files, {})
		keymap('n', '<space>b', fzf.buffers, {})
		keymap('n', '<space>?', fzf.commands, {})
		keymap('n', '<space>/', fzf.live_grep, {})
		keymap('n', "<space>'", fzf.resume, {})
		keymap('n', "<space>-", fzf.resume, {})
		keymap('n', '<space>s', fzf.grep_curbuf, {})
		keymap('n', '<space>e', fzf.grep_curbuf, {})
		keymap('n', '<space>E', fzf.live_grep, {})
		keymap('n', '<space>S', fzf.live_grep, {})
    end
}
