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
    col = {
        red = "#c94f6d",
        orange = "#f4a261",
        yellow = "#dbc074",
        blue = "#86abdc",
        purple = "#86abdc",
        pink = "#dc8ed9",
        green = "#81b29a",
    }
}

local highlight = vim.api.nvim_set_hl

-- YELLOW Foreground

highlight(0, "Type", { fg = p.col.yellow })
highlight(0, "StorageClass", { link = "Type" })
highlight(0, "Structure", { link = "Type" })
highlight(0, "Typedef", { link = "Type" })
highlight(0, "@type", { link = "Type" })
highlight(0, "@type.definition", { link = "Type" })
highlight(0, "@type.qualifier", { link = "Type" })
highlight(0, "@storageclass", { link = "Type" })
highlight(0, "@lsp.type.enum", { link = "Type" })
highlight(0, "@lsp.type.class", { link = "Type" })
highlight(0, "@lsp.type.struct", { link = "Type" })
highlight(0, "@lsp.type.type", { link = "Type" })
highlight(0, "@lsp.type.typeParameter", { link = "Type" })
highlight(0, "NvimNumberPrefix", { link = "Type" })
highlight(0, "NvimOptionSigil", { link = "Type" })
highlight(0, "NvimEnvironmentSigil", { link = "Type" })
highlight(0, "LspInfoFiletype", { link = "Type" })
highlight(0, "CmpItemKindStruct", { link = "Type" })
highlight(0, "CmpItemKindClass", { link = "Type" })
highlight(0, "NavicIconsClass", { link = "Type" })
highlight(0, "NavicIconsStruct", { link = "Type" })
highlight(0, "NavicIconsNull", { link = "Type" })

highlight(0, "DiagnosticWarn", { fg = p.col.yellow })
highlight(0, "DiagnosticSignWarn", { fg = p.col.yellow })
highlight(0, "diffChanged", { fg = p.col.yellow })
highlight(0, "diffOldFile", { fg = p.col.yellow })
highlight(0, "diffTreeGitDirty", { fg = p.col.yellow })
highlight(0, "GitGutterChange", { fg = p.col.yellow })
highlight(0, "GitSignChange", { fg = p.col.yellow })
highlight(0, "IndentBlanklineIndent6", { fg = p.col.yellow })
highlight(0, "NeogitBranch", { fg = p.col.yellow })
highlight(0, "NeogitNotificationWarning", { fg = p.col.yellow })
highlight(0, "NeotestSkipped", { fg = p.col.yellow })
highlight(0, "NeoTreeGitModified", { fg = p.col.yellow })
highlight(0, "NotifyWARNTitle", { fg = p.col.yellow })
highlight(0, "SignifySignChange", { fg = p.col.yellow })
highlight(0, "TelescopeMultiSelection", { fg = p.col.yellow })
highlight(0, "WarningMsg", { fg = p.col.yellow })
highlight(0, "GlyphPalette3", { fg = p.col.yellow })
highlight(0, "GlyphPalette11", { fg = p.col.yellow })
highlight(0, "NotifyWARNIcon", { fg = p.col.yellow })
highlight(0, "rainbowcol2", { fg = p.col.yellow })
highlight(0, "TSRainbowYellow", { fg = p.col.yellow })
highlight(0, "@string.regex", { fg = p.col.yellow })
highlight(0, "DapUIWatchesValue", { fg = p.col.yellow })
highlight(0, "DapUIType", { fg = p.col.yellow })

highlight(0, "BufferVisibleMod", { fg = p.col.yellow, bg = p.bg.dark1 })

-- highlight(0, "CursorLineNr", { fg = p.col.yellow, bold = true })
-- highlight(0, "MatchParen", { fg = p.col.yellow, bold = true })

-- YELLOW Background
-- highlight(0, "MiniStatuslineModeCommand", { fg = p.bg.normal, bg = p.col.yellow, bold = true })
-- highlight(0, "lualine_a_command", { fg = p.bg.normal, bg = p.col.yellow, bold = true })
highlight(0, "@text.warning", { fg = p.bg.normal, bg = p.col.yellow })


highlight(0, "Normal", { bg = p.bg.normal })
highlight(0, "NormalNC", { bg = p.bg.normal })
highlight(0, "Search", { bg = p.bg.normal })
highlight(0, "Pmenu", { bg = p.bg.normal })
highlight(0, "LspReferenceText", { bg = p.bg.normal })
highlight(0, "WinBar", { bg = p.bg.normal })
highlight(0, "WinBarNC", { bg = p.bg.normal })

highlight(0, "NonText", { fg = "#39506d" })
highlight(0, "SpecialKey", { link = "NonText" })

highlight(0, "TabLineSel", { fg = p.bg.normal })
highlight(0, "Cursor", { fg = p.bg.normal })

highlight(0, "CursorLine", { bg = p.bg.bright1 })

highlight(0, "Visual", { bg = p.bg.bright2 })

highlight(0, "Todo", { fg = p.bg.normal, bg = p.fg.blue })

