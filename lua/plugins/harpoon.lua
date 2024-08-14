return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
        local harpoon = require("harpoon")
        harpoon:setup({
            settings = {
                save_on_toggle = true,
                sync_on_ui_close = true,
            }
        })

        vim.keymap.set("n", "<space>i", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        vim.keymap.set("n", "<space>o", function() harpoon:list():add() end)

		vim.keymap.set("n", "<space>u", function() harpoon:list():select(1) end)
		vim.keymap.set("n", "<space>q", function() harpoon:list():select(2) end)
		vim.keymap.set("n", "<space>w", function() harpoon:list():select(3) end)
		vim.keymap.set("n", "<space>e", function() harpoon:list():select(4) end)
		vim.keymap.set("n", "<space>r", function() harpoon:list():select(5) end)
		vim.keymap.set("n", "<space>t", function() harpoon:list():select(6) end)

		vim.keymap.set("n", "<space>1", function() harpoon:list():select(1) end)
		vim.keymap.set("n", "<space>2", function() harpoon:list():select(2) end)
		vim.keymap.set("n", "<space>3", function() harpoon:list():select(3) end)
		vim.keymap.set("n", "<space>4", function() harpoon:list():select(4) end)
		vim.keymap.set("n", "<space>5", function() harpoon:list():select(5) end)
		vim.keymap.set("n", "<space>6", function() harpoon:list():select(6) end)
	end
}
