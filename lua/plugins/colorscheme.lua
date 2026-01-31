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
				ts_context = {
					dark_background = false,
				},
			})
			-- vim.cmd("colorscheme nordic")
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
				},
				plugins = {
					lsp = {
						diagnostic_error = "italic",
						diagnostic_hint = "italic",
						diagnostic_info = "italic",
						diagnostic_ok = "italic",
						diagnostic_warn = "italic",
					},
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
