return {
    "tpope/vim-fugitive",

    config = function() 
        vim.keymap.set("n", "<leader>gj", vim.cmd.Git)
    end
}
