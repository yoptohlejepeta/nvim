return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{ "Mofiqul/dracula.nvim", name = "dracula", priority = 1000 },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.moonflyWinSeparator = 2
			vim.g.moonflyVirtualTextColor = true
			vim.g.moonflyCursorColor = true
		end,
	},
}
