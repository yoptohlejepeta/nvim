return {
	"folke/snacks.nvim",
	priority = 1000,
	dependencies = {
		"nvim-mini/mini.icons",
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
		statuscolumn = { enabled = true },
		picker = {
			layout = {
				preset = function()
					return vim.o.columns >= 80 and "default" or "vertical"
				end,
			},
			layouts = {
				default = {
					layout = {
						width = 0.99,
						height = 0.99,
					},
				},
			},
		},
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
