return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"
	use "williamboman/mason.nvim"
	use 'neovim/nvim-lspconfig'
	use "nvim-treesitter/nvim-treesitter"
	use { "EdenEast/nightfox.nvim", run = ":NightfoxCompile", }
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
    use 'rhysd/vim-grammarous'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
    use 'ellisonleao/gruvbox.nvim'
    use {'akinsho/bufferline.nvim', tag = "v3.*"}
    use 'windwp/nvim-autopairs'
end)
