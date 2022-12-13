vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.smartindent = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.showcmd = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.showmode = false
vim.opt.scrolloff = 5
vim.opt.cursorline = true
vim.cmd[[colorscheme nightfox]]
vim.cmd[[set spelllang=en,de]]
vim.g.languagetool_server_jar = "/usr/share/java/languagetool/languagetool-server.jar"
--vim.api.nvim_create_autocmd("TermOpen", {command=[[setlocal nonumber norelativenumber]]})

vim.g.cmp_toggle = false
