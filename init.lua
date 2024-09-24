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

require('keymaps')
require("lazy").setup({
    spec = "plugins",
    change_detection = { notify = false }
})
require('options')
require('custom_functions')
-- require('theme')
require('autorun')

