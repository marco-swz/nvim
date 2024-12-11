return { 
	"williamboman/mason.nvim",
    'rhysd/vim-grammarous',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'saadparwaiz1/cmp_luasnip',
    { 'j-hui/fidget.nvim', config = true, tag = 'legacy' },
    'nvim-lua/plenary.nvim',
    {
        "rebelot/kanagawa.nvim",
        config = function() 
            require('kanagawa').setup({
                compile = false,             -- enable compiling the colorscheme
                undercurl = true,            -- enable undercurls
                commentStyle = { italic = false },
                functionStyle = {},
                keywordStyle = { bold = true, italic = false },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false,         -- do not set background color
                dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
                terminalColors = true,       -- define vim.g.terminal_color_{0,17}
                colors = {
                    theme = {
                        all = {
                            ui = {
                                bg_gutter = "none"
                            }
                        }
                    }
                },
                overrides = function(colors) -- add/modify highlights
                    return {
                        LineNr = { fg = colors.palette.surimiOrange },
                        LineNrAbove = { fg = colors.palette.fujiGray },
                        LineNrBelow = { fg = colors.palette.fujiGray },
                    }
                end,
                theme = "wave",              -- Load "wave" theme when 'background' option is not set
                background = {               -- map the value of 'background' option to a theme
                    dark = "wave",           -- try "dragon" !
                    light = "lotus"
                },
            })
        end
    },
}
