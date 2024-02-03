return {
	'L3MON4D3/LuaSnip',
	
	config = function()
		local ls = require("luasnip")

		vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
		vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
		vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

		vim.keymap.set({"i", "s"}, "<C-E>", function()
			if ls.choice_active() then
				ls.change_choice(1)
			end
		end, {silent = true}) 

		ls.setup({
			history = true,
			updateevents = "TextChanged,TextChangedI",
		})

		ls.snippets = {
			php = {
				ls.parser.parse_snippet('fe', 'foreach ($1 as $2) {\n \t$0\n}'),
			}
		}
	end
}
