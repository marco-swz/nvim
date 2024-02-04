return {
	'L3MON4D3/LuaSnip',
	
	config = function()
		local ls = require("luasnip")

		vim.keymap.set({"i"}, "<C-j>", function() ls.expand() end, {silent = true})
		vim.keymap.set({"i", "s"}, "<C-,>", function() ls.jump( 1) end, {silent = true})
		vim.keymap.set({"i", "s"}, "<C-m>", function() ls.jump(-1) end, {silent = true})

		vim.keymap.set({"i", "s"}, "<C-E>", function()
			if ls.choice_active() then
				ls.change_choice(1)
			end
		end, {silent = true}) 

		ls.setup({
			history = true,
			updateevents = "TextChanged,TextChangedI",
		})

        require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })
	end
}
