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
		"nvim-mini/mini.statusline",
		version = false,
		config = function()
			require("mini.statusline").setup()
		end,
	},
	-- {
	-- 	"nvim-mini/mini.starter",
	-- 	version = false,
	-- 	config = function()
	-- 		require("mini.starter").setup({
	-- 			header = "",
	-- 			items = {
	-- 				{ name = "Files", action = ":lua Snacks.picker.files()", section = " " },
	-- 				{ name = "Projects", action = ":lua Snacks.dashboard.pick('projects')", section = " " },
	-- 				{ name = "Oil", action = ":Oil --float", section = " " },
	-- 				{ name = "Yazi", action = ":lua Snacks.terminal('yazi')", section = " " },
	-- 				{ name = "Lazy 󰒲 ", action = ":Lazy", section = " " },
	-- 				{ name = "Mason  ", action = ":Mason", section = " " },
	-- 				{ name = "Quit 󰈆 ", action = ":qa!", section = "" },
	-- 			},
	-- 			footer = "",
	-- 		})
	-- 	end,
	-- },
}
