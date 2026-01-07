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
				colors = {
					bg = "#1d1f21",
					inactiveBg = "#1c1c24",
					fg = "#cdcdcd",
					floatBorder = "#878787",
					line = "#252530",
					comment = "#606079",
					builtin = "#b4d4cf",
					func = "#cc6666",
					string = "#b5bd68",
					number = "#de935f",
					property = "#c3c3d5",
					constant = "#aeaed1",
					parameter = "#bb9dbd",
					visual = "#333738",
					error = "#d8647e",
					warning = "#f0c674",
					hint = "#7e98e8",
					operator = "#90a0b5",
					keyword = "#81a2be",
					type = "#9bb4bc",
					search = "#405065",
					plus = "#7fa563",
					delta = "#f3be7c",
				},
			})
			vim.cmd("colorscheme vague")
		end,
	},
	-- {
	-- 	"armannikoyan/rusty",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {
	-- 		colors = {
	-- 			foreground = "#c5c8c6",
	-- 			background = "#1d1f21",
	-- 			selection = "#373b41",
	-- 			line = "#282a2e",
	-- 			comment = "#969896",
	-- 			red = "#cc6666",
	-- 			orange = "#de935f",
	-- 			yellow = "#f0c674",
	-- 			green = "#b5bd68",
	-- 			aqua = "#8abeb7",
	-- 			blue = "#81a2be",
	-- 			purple = "#b294bb",
	-- 			window = "#4d5057",
	-- 		},
	-- 	},
	-- 	config = function(_, opts)
	-- 		require("rusty").setup(opts)
	-- 		--   vim.cmd("colorscheme rusty")
	-- 	end,
	-- },
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
