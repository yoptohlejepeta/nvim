return {
	"folke/snacks.nvim",
	priority = 1000,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	opts = {
		bigfile = { enabled = true },
		bufdelete = { enabled = true },
		image = {
			enabled = true,
			doc = {
				inline = false,
				float = false,
			},
		},
		terminal = {
			win = {
				wo = {
					winbar = "",
				},
			},
		},
	},
}
