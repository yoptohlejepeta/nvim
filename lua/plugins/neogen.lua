return {
	"danymat/neogen",
	config = function()
		local neogen = require("neogen")
		neogen.setup({
			enabled = true,
			snippet_engine = "luasnip",
		})

		local wk = require("which-key")

		wk.add({
			"<leader>nc",
			desc = "neogen doc",
			mode = "n",
			callback = function()
				neogen.generate()
			end,
			icon = { icon = "󰈙 ", color = "red" },
		})
	end,
}
