local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Define leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("", "<Space>", "<Nop>", opts)

keymap("n", "<space>a", ":Lexplore<cr>", opts)
keymap("n", "<space>g", "<cmd>lua require('custom_functions').send()<CR>", opts)
keymap("x", "<space>g", "<cmd>lua require('custom_functions').send(true)<CR>", opts)

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
-- C-. and C-, are not Ctrl-printable
keymap("n", "<C-.>", ":bnext<cr>", opts)
keymap("n", "<C-,>", ":bprevious<cr>", opts)
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)

-- Copy/paste using the system clipboard
keymap("n", "<space>y", '"+y', opts)
keymap("n", "<space>p", '"+p', opts)

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
keymap("x", "J", ":move '>+1<cr>gv-gv", opts)
keymap("x", "K", ":move '<-2<cr>gv-gv", opts)


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
keymap("n", "<space>cj", "<cmd>lua require('custom_functions').toggle_completion()<CR>", opts)

-- Toggle spell check
keymap("n", "<space>ck", "<cmd>lua require('custom_functions').toggle_spell()<cr>", opts)

-- Toggle grammar check
keymap("n", "<space>cl", "<cmd>lua require('custom_functions').toggle_grammar()<cr>", opts)

-- Center after moving up and down
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("i", "<C-h>", "<C-w>", opts)
keymap("i", "<C-BS>", "<C-w>", opts)
