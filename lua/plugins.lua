require("lazy").setup({
    "wbthomason/packer.nvim",
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },
    'rhysd/vim-grammarous',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'windwp/nvim-autopairs',
    {"j-hui/fidget.nvim", config = true, tag = "legacy"},
    'nvim-treesitter/nvim-treesitter-context',
    'EdenEast/nightfox.nvim',
    'nvim-lua/plenary.nvim',
    'ThePrimeagen/harpoon',
})
