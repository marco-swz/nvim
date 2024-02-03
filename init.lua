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

require "_plugins"
require "_options"
require "_keymaps"
require "_lsp"
require "_treesitter"
require "_treesitter_context"
require "_lualine"
require "_custom_functions"
require "_cmp"
require "_telescope"
require "_autopairs"
require "_harpoon"
require "_theme"

