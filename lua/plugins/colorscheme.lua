return {
	{
		"vague-theme/vague.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vague").setup({ style = { strings = "none", keywords = "bold" } })

			vim.cmd("colorscheme vague")
		end,
	},
	{
		"alexpasmantier/hubbamax.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"marko-cerovac/material.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("material").setup({

				styles = {
					comments = {
						italic = true,
					},
					functions = {
						bold = true,
					},
					operators = {},
					types = { bold = true },
				},

				plugins = {
					"blink",
					"dap",
					"gitsigns",
					"mini",
					-- "neo-tree",
					-- "neogit",
					-- "neorg",
					-- "neotest",
					-- "noice",
					-- "nvim-cmp",
					-- "nvim-navic",
					-- "nvim-notify",
					-- "nvim-tree",
					"nvim-web-devicons",
					-- "rainbow-delimiters",
					-- "sneak",
					-- "telescope",
					"trouble",
					"which-key",
				},

				disable = {
					colored_cursor = true,
				},
			})
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		opts = {
			user_default_options = {
				names = false,
				mode = "background",
			},
		},
		config = function()
			require("colorizer").setup()
		end,
	},
}
