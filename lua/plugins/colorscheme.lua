return {
	{
		-- vague but with colors from rusty colorscheme
		"vague-theme/vague.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vague").setup({
				style = {
					strings = "none",
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
