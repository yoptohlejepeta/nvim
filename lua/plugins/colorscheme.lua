return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				disable_italics = true,
				highlight_groups = {
					Comment = { italic = true },
				},
			})
		end,
	},
	{
		"vague-theme/vague.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vague").setup({
				style = {
					strings = "none",
					keyword_return = "bold",
					keywords = "bold",
				},
			})
			vim.cmd("colorscheme vague")
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
