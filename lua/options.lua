vim.opt.mouse = "a"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.showcmd = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.showmode = false
vim.opt.scrolloff = 8
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.cursorline = false
vim.opt.updatetime = 500
vim.opt.swapfile = false
vim.opt.backup = false
vim.cmd[[colorscheme kanagawa]]
vim.cmd[[set spelllang=en,de]]
vim.cmd[[set guifont=Consolas:h13]]
--vim.cmd[[:set guicursor=i:block]]
vim.g.languagetool_server_jar = "/usr/share/java/languagetool/languagetool-server.jar"
--vim.api.nvim_create_autocmd("TermOpen", {command=[[setlocal nonumber norelativenumber]]})
