
local p = {
	bg = {
		dark2 = "#04060e",
		dark1 = "#060e1a",
		normal = "#081426",
		bright1 = "#0b1b32", 
		bright2 = "#102543", 
	},
	fg = {
		blue = "#578cdb", 
		dark2 = "#eff4fb",
		dark1 = "#71839b",
		normal = "#c2c2c2",
	},
	col = {
		red = "#c94f6d",
		orange = "#f4a261",
		yellow = "#dbc074",
		blue = "#86abdc",
		purple = "#9d79d6",
		pink = "#dc8ed9",
		green = "#81b29a",
		cyan = "#63cdcf",
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

highlight(0, "CursorLineNr", { fg = p.col.yellow, bold = true })
highlight(0, "MatchParen", { fg = p.col.yellow, bold = true })

-- YELLOW Background

highlight(0, "MiniStatuslineModeCommand", { fg = p.bg.normal, bg = p.col.yellow, bold = true })
highlight(0, "lualine_a_command", { fg = p.bg.normal, bg = p.col.yellow, bold = true })
highlight(0, "@text.warning", { fg = p.bg.normal, bg = p.col.yellow })

-- RED Foreground

highlight(0, "Error", { fg = p.col.red })
highlight(0, "ErrorMsg", { link = "Error" })
highlight(0, "DiagnosticError", { link = "Error" })
highlight(0, "DiagnosticSignError", { link = "Error" })
highlight(0, "DiagnosticFloatingError", { link = "Error" })
highlight(0, "@exception", { link = "Error" })
highlight(0, "NvimInvalid", { link = "Error" })
highlight(0, "NvimInvalidAssignment", { link = "Error" })
highlight(0, "NvimInvalidPlainAssignment", { link = "Error" })
highlight(0, "NvimInvalidAugmentedAssignment", { link = "Error" })
highlight(0, "NvimInvalidAssignmentWithAddition", { link = "Error" })
highlight(0, "NvimInvalidAssignmentWithSubstraction", { link = "Error" })
highlight(0, "NvimInvalidAssignmentWithConcatenation", { link = "Error" })
highlight(0, "NvimInvalidOperator", { link = "Error" })
highlight(0, "NvimInvalidUnaryOperator", { link = "Error" })
highlight(0, "NvimInvalidUnaryPlus", { link = "Error" })
highlight(0, "NvimInvalidUnaryMinus", { link = "Error" })
highlight(0, "NvimInvalidNot", { link = "Error" })
highlight(0, "NvimInvalidBinaryOperator", { link = "Error" })
highlight(0, "NvimInvalidComparison", { link = "Error" })
highlight(0, "NvimInvalidComparisonModifier", { link = "Error" })
highlight(0, "NvimInvalidBinaryPlus", { link = "Error" })
highlight(0, "NvimInvalidBinaryMinus", { link = "Error" })
highlight(0, "NvimInvalidConcat", { link = "Error" })
highlight(0, "NvimInvalidConcatOrSubscript", { link = "Error" })
highlight(0, "NvimInvalidOr", { link = "Error" })
highlight(0, "NvimInvalidAnd", { link = "Error" })
highlight(0, "NvimInvalidMultiplication", { link = "Error" })
highlight(0, "NvimInvalidDivision", { link = "Error" })
highlight(0, "NvimInvalidMod", { link = "Error" })
highlight(0, "NvimInvalidTernary", { link = "Error" })
highlight(0, "NvimInvalidTernaryColon", { link = "Error" })
highlight(0, "NvimInvalidDelimiter", { link = "Error" })
highlight(0, "NvimInvalidParenthesis", { link = "Error" })
highlight(0, "NvimInvalidLambda", { link = "Error" })
highlight(0, "NvimInvalidNestingParenthesis", { link = "Error" })
highlight(0, "NvimInvalidCallingParenthesis", { link = "Error" })
highlight(0, "NvimInvalidSubscript", { link = "Error" })
highlight(0, "NvimInvalidSubscriptBracket", { link = "Error" })
highlight(0, "NvimInvalidSubscriptColon", { link = "Error" })
highlight(0, "NvimInvalidCurly", { link = "Error" })
highlight(0, "NvimInvalidContainer", { link = "Error" })
highlight(0, "NvimInvalidDict", { link = "Error" })
highlight(0, "NvimInvalidList", { link = "Error" })
highlight(0, "NvimInvalidValue", { link = "Error" })
highlight(0, "NvimInvalidIdentifier", { link = "Error" })
highlight(0, "NvimInvalidIdentifierScope", { link = "Error" })
highlight(0, "NvimInvalidIdentifierScopeDelimiter", { link = "Error" })
highlight(0, "NvimInvalidIdentifierName", { link = "Error" })
highlight(0, "NvimInvalidIdentifierKey", { link = "Error" })
highlight(0, "NvimInvalidColon", { link = "Error" })
highlight(0, "NvimInvalidComma", { link = "Error" })
highlight(0, "NvimInvalidArrow", { link = "Error" })
highlight(0, "NvimInvalidRegister", { link = "Error" })
highlight(0, "NvimInvalidNumber", { link = "Error" })
highlight(0, "NvimInvalidFloat", { link = "Error" })
highlight(0, "NvimInvalidNumberPrefix", { link = "Error" })
highlight(0, "NvimInvalidOptionSigil", { link = "Error" })
highlight(0, "NvimInvalidOptionName", { link = "Error" })
highlight(0, "NvimInvalidOptionScope", { link = "Error" })
highlight(0, "NvimInvalidOptionScopeDelimiter", { link = "Error" })
highlight(0, "NvimInvalidEnvironmentSigil", { link = "Error" })
highlight(0, "NvimInvalidEnvironmentName", { link = "Error" })
highlight(0, "NvimInvalidString", { link = "Error" })
highlight(0, "NvimInvalidStringBody", { link = "Error" })
highlight(0, "NvimInvalidStringQuote", { link = "Error" })
highlight(0, "NvimInvalidStringSpecial", { link = "Error" })
highlight(0, "NvimInvalidSingleQuote", { link = "Error" })
highlight(0, "NvimInvalidSingleQuotedBody", { link = "Error" })
highlight(0, "NvimInvalidSingleQuotedQuote", { link = "Error" })
highlight(0, "NvimInvalidDoubleQuote", { link = "Error" })
highlight(0, "NvimInvalidDoubleQuotedBody", { link = "Error" })
highlight(0, "NvimInvalidDoubleQuotedEscape", { link = "Error" })
highlight(0, "NvimInvalidDoubleQuotedUnknownEscape", { link = "Error" })
highlight(0, "NvimInvalidFigureBrace", { link = "Error" })
highlight(0, "NvimInvalidSpacing", { link = "Error" })
highlight(0, "NvimDoubleQuotedUnknownEscape", { link = "Error" })
highlight(0, "NeogitNotificationError", { link = "Error" })
highlight(0, "NotifyERRORTitle", { link = "Error" })
highlight(0, "NotifyERRORIcon", { link = "Error" })
highlight(0, "DapUIWatchesError", { link = "Error" })
highlight(0, "NeotestFailed", { link = "Error" })
highlight(0, "@error", { link = "Error" })

highlight(0, "@function.builtin", { fg = p.col.red })
highlight(0, "@function.macro", { fg = p.col.red })
highlight(0, "@keyword.return", { fg = p.col.red })
highlight(0, "@lsp.typemod.method.defaultLibrary", { fg = p.col.red })
highlight(0, "@lsp.typemod.function.defaultLibrary", { fg = p.col.red })
highlight(0, "@lsp.typemod.variable.defaultLibrary", { fg = p.col.red })
highlight(0, "@variable.builtin", { fg = p.col.red })
highlight(0, "NeoTreeGitRename", { fg = p.col.red })
highlight(0, "GlyphPalette1", { fg = p.col.red })
highlight(0, "GlyphPalette9", { fg = p.col.red })
highlight(0, "IndentBlanklineIndent5", { fg = p.col.red })
highlight(0, "DapUIWatchesEmpty", { fg = p.col.red })
highlight(0, "LspSagaSignatureHelpBorder", { fg = p.col.red })
highlight(0, "MiniStarterSection", { fg = p.col.red })
highlight(0, "@text.emphasis", { fg = p.col.red })
highlight(0, "TSRainbowRed", { fg = p.col.red })
highlight(0, "BufferVisibleTarget", { fg = p.col.red })
highlight(0, "BufferInactiveTarget", { fg = p.col.red })
highlight(0, "rainbowcol1", { fg = p.col.red })

highlight(0, "diffRemoved", { fg = p.col.red })
highlight(0, "NeogitDiffDelete", { fg = p.col.red })
highlight(0, "NeogitNotification", { fg = p.col.red })
highlight(0, "SignifySignDelete", { fg = p.col.red })
highlight(0, "NeoTreeGitDeleted", { fg = p.col.red })
highlight(0, "GitSignsDelete", { fg = p.col.red })
highlight(0, "GitGutterDelete", { fg = p.col.red })
highlight(0, "@text.diff.delete", { fg = p.col.red })

highlight(0, "MiniTestFail", { fg = p.col.red, bold = true })
highlight(0, "@text.strong", { fg = p.col.red, bold = true })

-- ORANGE Foreground

highlight(0, "Constant", { fg = p.col.orange })
highlight(0, "@constant", { link = "Constant" })
highlight(0, "@constant.builtin", { link = "Constant" })
highlight(0, "TelescopeResultsConstant", { link = "Constant" })
highlight(0, "CmpItemKindConstant", { link = "Constant" })
highlight(0, "NavicIconsConstant", { link = "Constant" })

highlight(0, "Number", { fg = p.col.orange })
highlight(0, "@number", { link = "Number" })
highlight(0, "NvimNumber", { link = "Number" })
highlight(0, "TelescopeResultsNumber", { link = "Number" })
highlight(0, "NavicIconsNumber", { link = "Number" })

highlight(0, "Boolean", { fg = p.col.orange })
highlight(0, "@boolean", { link = "Boolean" })
highlight(0, "NavicIconsBoolean", { link = "Boolean" })

highlight(0, "Float", { fg = p.col.orange })
highlight(0, "@float", { link = "Float" })
highlight(0, "NvimFloat", { link = "Float" })

highlight(0, "@lsp.type.enumMember", { fg = p.col.orange })
highlight(0, "CmpItemKindEnum", { link = "@lsp.type.enumMember" })
highlight(0, "NavicIconsEnum", { link = "@lsp.type.enumMember" })

highlight(0, "TelescopePreviewGroup", { fg = p.col.orange })
highlight(0, "TelescopePreviewRead", { fg = p.col.orange })
highlight(0, "TelescopePreviewBlock", { fg = p.col.orange })
highlight(0, "TelescopePreviewCharDev", { fg = p.col.orange })
highlight(0, "TelescopePreviewPipe", { fg = p.col.orange })
highlight(0, "CmpItemKindInterface", { fg = p.col.orange })
highlight(0, "CmpItemKindUnit", { fg = p.col.orange })
highlight(0, "CmpItemKindEvent", { fg = p.col.orange })
highlight(0, "diffLine", { fg = p.col.orange })
highlight(0, "AlphaShortCut", { fg = p.col.orange })
highlight(0, "AlphaHeaderLabel", { fg = p.col.orange })
highlight(0, "NavicIconsEvent", { fg = p.col.orange })
highlight(0, "NavicIconsInterface", { fg = p.col.orange })
highlight(0, "NeotestRunning", { fg = p.col.orange })
highlight(0, "NvimTreeGitMerge", { fg = p.col.orange })
highlight(0, "IndentBlanklineIndent3", { fg = p.col.orange })
highlight(0, "DapUILineNumber", { fg = p.col.orange })
highlight(0, "DapUIBreakpointsLine", { fg = p.col.orange })
highlight(0, "TSRainbowOrange", { fg = p.col.orange })
highlight(0, "@attribute", { fg = p.col.orange })

highlight(0, "NeoTreeRootName", { fg = p.col.orange, bold = true })
highlight(0, "NvimTreeRootFolder", { fg = p.col.orange, bold = true })
highlight(0, "NeoTreeGitConflict", { fg = p.col.orange, italic = true })
highlight(0, "DashboardFooter", { fg = p.col.orange, italic = true })
highlight(0, "MiniStarterFooter", { fg = p.col.orange, italic = true })
highlight(0, "@text.uri", { fg = p.col.orange, underline = true, italic = true })

-- DARK1 Background

highlight(0, "lualine_c_normal", { bg = p.bg.dark1})

-- NORMAL Background

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

highlight(0, "HarpoonInactive", { fg = p.fg.dark1, bg = p.bg.dark1 })
highlight(0, "HarpoonActive", { fg = p.fg.normal, bg = p.bg.dark1 })
highlight(0, "HarpoonNumberActive", { fg = p.fg.normal, bg = p.bg.dark1 })
highlight(0, "HarpoonNumberInactive", { fg = p.fg.dark1, bg = p.bg.dark1 })
highlight(0, "TabLineFill", { bg = p.bg.dark1 })