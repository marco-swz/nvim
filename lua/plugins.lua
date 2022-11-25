return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"
	use "williamboman/mason.nvim"
	use 'neovim/nvim-lspconfig'
	use 'ms-jpq/coq_nvim'
	use "nvim-treesitter/nvim-treesitter"
	use { "EdenEast/nightfox.nvim", run = ":NightfoxCompile", }
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'vigoux/LanguageTool.nvim'
end)
