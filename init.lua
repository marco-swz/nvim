local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require "plugins"
require "options"
require "keymaps"
require "_lsp"
require "_treesitter"
require "_treesitter_context"
require "_lualine"
require "custom_functions"
require "_cmp"
require "_telescope"
require "_autopairs"
require "_harpoon"

local p = {
    bg = {
        dark1 = "#060e1a",
        normal = "#081426",
        bright1 = "#0b1b32", 
        bright2 = "#102543", 
    },
    fg = {
        blue = "#578cdb", 
        dark1 = "#eff4fb",
        normal = "#c2c2c2",
    },
}

local highlight = vim.api.nvim_set_hl

highlight(0, "Normal", { bg = p.bg.normal })
highlight(0, "NormalNC", { bg = p.bg.normal })
highlight(0, "Search", { bg = p.bg.normal })
highlight(0, "Pmenu", { bg = p.bg.normal })
highlight(0, "LspReferenceText", { bg = p.bg.normal })
highlight(0, "WinBar", { bg = p.bg.normal })
highlight(0, "WinBarNC", { bg = p.bg.normal })

highlight(0, "TabLineSel", { fg = p.bg.normal })
highlight(0, "Cursor", { fg = p.bg.normal })
highlight(0, "Todo", { fg = p.bg.normal })

highlight(0, "CursorLine", { bg = p.bg.bright1 })

highlight(0, "Visual", { bg = p.bg.bright2 })

