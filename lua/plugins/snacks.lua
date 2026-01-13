return {
	"folke/snacks.nvim",
	priority = 1000,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile = { enabled = true },
		bufdelete = { enabled = true },
		image = {
			doc = {
				inline = false,
				float = false,
			},
		},
		picker = { enabled = true },
		dashboard = { preset = { header = "" } },
		terminal = {
			win = {
				wo = {
					winbar = "",
				},
			},
		},
	},
}
