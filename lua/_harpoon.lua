require("harpoon").setup({
    tabline = true,
    tabline_prefix = " ",
    tabline_suffix = " ",
})

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "sj", ui.toggle_quick_menu)
vim.keymap.set("n", "<space>sj", ui.toggle_quick_menu)
vim.keymap.set("n", "ss", mark.add_file)
vim.keymap.set("n", "<space>ss", mark.add_file)
vim.keymap.set("n", "<space>u", function() ui.nav_file(1) end)
vim.keymap.set("n", "<space>q", function() ui.nav_file(2) end)
vim.keymap.set("n", "<space>w", function() ui.nav_file(3) end)
vim.keymap.set("n", "<space>e", function() ui.nav_file(4) end)
vim.keymap.set("n", "<space>r", function() ui.nav_file(5) end)
vim.keymap.set("n", "<space>t", function() ui.nav_file(6) end)
vim.keymap.set("n", "<space>y", function() ui.nav_file(7) end)
vim.keymap.set("n", "<space>p", function() ui.nav_file(8) end)
vim.keymap.set("n", "<space>i", function() ui.nav_file(9) end)

vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#71839b')
vim.cmd('highlight! HarpoonActive guibg=NONE guifg=#ffffff')
vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#71839b')
vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#ffffff')
vim.cmd('highlight! TabLineFill guibg=NONE guifg=#ffffff')
