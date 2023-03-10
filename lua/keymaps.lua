local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)

keymap("n", "<leader>n", ":Vexplore<cr>", opts)
keymap("n", "<leader>t", "<cmd>lua require('custom_functions').send()<CR>", opts)
keymap("x", "<leader>t", "<cmd>lua require('custom_functions').send(true)<CR>", opts)

-- Move around windows
--keymap("n", "<C-h>", "<C-w>h", opts)
--keymap("n", "<C-j>", "<C-w>j", opts)
--keymap("n", "<C-k>", "<C-w>k", opts)
--keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize windows
keymap("n", "<A-k>", ":res +2<cr>", opts)
keymap("n", "<A-j>", ":res -2<cr>", opts)
keymap("n", "<A-l>", ":vertical resize +2<cr>", opts)
keymap("n", "<A-h>", ":vertical resize -2<cr>", opts)

-- Move around buffers
keymap("n", "<C-l>", ":bnext<cr>", opts)
keymap("n", "<C-h>", ":bprevious<cr>", opts)
keymap("n", "gn", ":bnext<cr>", opts)
keymap("n", "gp", ":bprevious<cr>", opts)


-- VISUAL MODE --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Alt line move
keymap("v", "<A-j>", ":m .+1<cr>==", opts)
keymap("v", "<A-k>", ":m .-2<cr>==", opts)

-- Keeps yanked word after paste
keymap("v", "p", '"_dP', opts)


-- VISUAL BLOCK MODE --
-- Move text left and right
keymap("x", "J", ":move '>+1<cr>gv-gv", opts)
keymap("x", "K", ":move '<-2<cr>gv-gv", opts)
-- Move test up and down
keymap("x", "<A-j>", ":move '>+1<cr>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<cr>gv-gv", opts)

-- TERMINAL
vim.cmd([[:tnoremap <A-[> <C-\><C-n>]])
vim.cmd([[:tnoremap <C-w>j <C-\><C-n><C-w>j]])
vim.cmd([[:tnoremap <C-w>h <C-\><C-n><C-w>h]])
vim.cmd([[:tnoremap <C-w>k <C-\><C-n><C-w>k]])
vim.cmd([[:tnoremap <C-w>l <C-\><C-n><C-w>l]])

-- VARIOUS
-- Toggle completion
keymap("n", "<leader>c", "<cmd>lua require('custom_functions').toggle_completion()<CR>", opts)

-- Toggle spell check
keymap("n", "<leader>s", "<cmd>lua require('custom_functions').toggle_spell()<cr>", opts)

-- Toggle grammar check
keymap("n", "<leader>g", "<cmd>lua require('custom_functions').toggle_grammar()<cr>", opts)

-- Center after moving up and down
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
