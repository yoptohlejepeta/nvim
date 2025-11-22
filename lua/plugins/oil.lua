return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	config = function()
		require("oil").setup({
			float = {
				preview_split = "right",
			},
		})

		local wk = require("which-key")

		wk.add({

			{ "-", "<cmd>Oil --float<CR>", desc = "oil", icon = " " },
		})
	end,
}
