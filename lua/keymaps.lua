local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Define leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("", "<Space>", "<Nop>", opts)

keymap("n", "<space>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })
--keymap("n", "<space>g", "<cmd>lua require('custom_functions').send()<CR>", opts)
--keymap("x", "<space>g", "<cmd>lua require('custom_functions').send(true)<CR>", opts)

-- Move around windows
keymap("n", "<space>h", "<C-w>h", opts)
keymap("n", "<space>j", "<C-w>j", opts)
keymap("n", "<space>k", "<C-w>k", opts)
keymap("n", "<space>l", "<C-w>l", opts)

-- Resize windows
keymap("n", "<C-S-k>", ":res +2<cr>", opts)
keymap("n", "<C-S-j>", ":res -2<cr>", opts)
keymap("n", "<C-S-h>", ":vertical resize +2<cr>", opts)
keymap("n", "<C-S-j>", ":vertical resize -2<cr>", opts)


-- Move around buffers
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)

-- Copy/paste using the system clipboard
keymap("n", "<C-y>", '"+y', opts)
keymap("i", "<C-y>", '"+y', opts)
keymap("v", "<C-y>", '"+y', opts)
keymap("n", "<C-p>", '"+p', opts)
keymap("i", "<C-p>", '<esc>"+pa', opts)
keymap("v", "<C-p>", '"+p', opts)

-- Centering
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "<C-o>", "<C-o>zz", opts)
keymap("n", "<C-i>", "<C-i>zz", opts)

-- Jump up/down
keymap("n", "J", "<C-d>zz", opts)
keymap("n", "K", "<C-u>zz", opts)

-- VISUAL MODE --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Keeps yanked word after paste
keymap("v", "p", '"_dP', opts)

-- VISUAL BLOCK MODE --
-- Move text left and right
-- keymap("x", "J", ":move '>+1<cr>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<cr>gv-gv", opts)


-- TERMINAL --
vim.cmd([[:tnoremap <esc> <C-\><C-n>]])
vim.cmd([[:tnoremap <C-w>j <C-\><C-n><C-w>j]])
vim.cmd([[:tnoremap <C-w>h <C-\><C-n><C-w>h]])
vim.cmd([[:tnoremap <C-w>k <C-\><C-n><C-w>k]])
vim.cmd([[:tnoremap <C-w>l <C-\><C-n><C-w>l]])
--vim.cmd([[:tnoremap <S-l> <C-\><C-n>:bnext<cr>]])
--vim.cmd([[:tnoremap <S-h> <C-\><C-n>:bprevious<cr>]])


-- VARIOUS --
-- Toggle completion
keymap("n", "<C-n>", "<cmd>lua require('custom_functions').toggle_completion()<CR>", opts)
keymap("i", "<C-n>", "<cmd>lua require('custom_functions').toggle_completion()<CR>", opts)

-- Toggle spell check
-- keymap("n", "<space>ck", "<cmd>lua require('custom_functions').toggle_spell()<cr>", opts)

-- Toggle grammar check
-- keymap("n", "<space>cl", "<cmd>lua require('custom_functions').toggle_grammar()<cr>", opts)

-- Center after moving up and down
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("i", "<C-h>", "<C-w>", opts)
keymap("i", "<C-BS>", "<C-w>", opts)


keymap("n", "<space>c", "gcc", opts)
vim.keymap.set('n', '<space>a', vim.lsp.buf.code_action, opts)
keymap("n", "R", "viwp", opts)
keymap("n", "U", "<C-r>", opts)
keymap("n", ">", ">>", opts)
keymap("n", "<", "<<", opts)
keymap("n", "%", "ggVG", opts)
keymap("v", "%", "<esc>ggVG", opts)
keymap("n", "ge", "G", opts)
keymap("v", "ge", "G", opts)
keymap("n", "gh", "0", opts)
keymap("v", "gh", "0", opts)
keymap("n", "gl", "$", opts)
keymap("v", "gl", "$", opts)
keymap("n", "gs", "^", opts)
keymap("v", "gs", "^", opts)
keymap("n", "gt", "H", opts)
keymap("v", "gt", "H", opts)
keymap("n", "gc", "M", opts)
keymap("v", "gc", "M", opts)
keymap("n", "gb", "L", opts)
keymap("v", "gb", "L", opts)
keymap("n", "s", "/\\c", opts)
keymap("n", "S", "?\\c", opts)

keymap("n", "<esc>", ":noh<cr>", opts)
