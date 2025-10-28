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
		picker = {
			sources = {
				files = {
					hidden = true,
					ignored = true,
					ignore = {
						git_ignored = true,
						patterns = { ".venv", ".git" },
					},
					include = { ".env" },
					exclude = { ".venv", "venv", "node_modules", "*cache*", ".hypothesis", ".coverage" },
				},
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
