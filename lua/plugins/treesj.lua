return {
	"Wansmer/treesj",
	keys = { "<leader>," },
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		local tj = require("treesj")

		tj.setup({
			use_default_keymaps = false,
			max_join_length = 100,
		})

		local wk = require("which-key")

		wk.add({
			{
				"<leader>,",
				desc = "toggle split",
				callback = function()
					tj.toggle()
				end,
			},
		})
	end,
}
