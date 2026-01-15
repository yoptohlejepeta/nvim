return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-mini/mini.icons" },
	lazy = false,
	config = function()
		require("oil").setup({
			float = {
				preview_split = "right",
				padding = 0,
			},
		})

		local wk = require("which-key")

		wk.add({

			{ "-", "<cmd>Oil --float<CR>", desc = "oil", icon = " " },
		})
	end,
}
