require("harpoon").setup({
    tabline = true,
    tabline_prefix = " ",
    tabline_suffix = " ",
})

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "sj", ui.toggle_quick_menu)
vim.keymap.set("n", "sk", mark.add_file)
vim.keymap.set("n", "<leader>q", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>w", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>e", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>r", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>t", function() ui.nav_file(5) end)
vim.keymap.set("n", "<leader>y", function() ui.nav_file(6) end)
vim.keymap.set("n", "<leader>u", function() ui.nav_file(7) end)
vim.keymap.set("n", "<leader>i", function() ui.nav_file(8) end)
vim.keymap.set("n", "<leader>o", function() ui.nav_file(9) end)

vim.cmd('highlight! HarpoonActive guibg=NONE guifg=#ffffff')
vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#ffffff')
