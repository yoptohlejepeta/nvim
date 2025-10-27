return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"vague-theme/vague.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vague").setup({ style = { strings = "none" } })
		end,
	},
}
