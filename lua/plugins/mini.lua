return {
	{
		"nvim-mini/mini.move",
		version = false,
		config = function()
			require("mini.move").setup()
		end,
	},
	{
		"nvim-mini/mini.surround",
		version = false,
		config = function()
			require("mini.surround").setup()
		end,
	},
	{
		"nvim-mini/mini.starter",
		version = false,
		config = function()
			require("mini.starter").setup({
				header = "",
				items = {
					{ name = "Files  ", action = ":lua Snacks.picker.files()", section = "" },
					{ name = "Projects  ", action = ":lua Snacks.dashboard.pick('projects')", section = "" },
					{ name = "Lazy 󰒲 ", action = ":Lazy", section = "" },
					{ name = "Mason  ", action = ":Mason", section = "" },
					{ name = "Quit 󰈆 ", action = ":qa!", section = "" },
					{ name = "New file  ", action = ":ene", section = "---" },
					{ name = "Yazi 󰇥 ", action = ":lua Snacks.terminal('yazi')", section = "---" },
				},
				footer = "",
			})
		end,
	},
}
