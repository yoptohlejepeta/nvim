return {
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nordic").setup({
				bold_keywords = true,
				swap_backgrounds = true,
				cursorline = {
					theme = "light",
				},
			})
			vim.cmd("colorscheme nordic")
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
