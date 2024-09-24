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
	'EdenEast/nightfox.nvim',
    "rebelot/kanagawa.nvim",
    "sainnhe/sonokai",
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
    {
        'cranberry-clockworks/coal.nvim',
        config = function()
            require('coal').setup({
                colors = {
                    smoky_black = '#000000'
                }
            })
        end
    },
    { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000 },
}
