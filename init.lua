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

-- Define leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require "plugins"
require "options"
require "keymaps"
require "_lsp"
require "_treesitter"
require "_lualine"
require "custom_functions"
require "_completion"
require "_telescope"
require "_autopairs"
require "_harpoon"
