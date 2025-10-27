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
		"nvim-mini/mini.pick",
		version = false,
		config = function()
			require("mini.pick").setup()

			local pick = require("mini.pick")
			local builtin_files = pick.builtin.files
			pick.builtin.files = function(local_opts, opts)
				opts = opts or {}
				opts.source = opts.source or {}
				opts.source.tool = opts.source.tool or "fd"
				return builtin_files(local_opts, opts)
			end
		end,
	},
	{
		"nvim-mini/mini.starter",
		version = false,
		config = function()
			require("mini.starter").setup({
				header = "",
				items = {
					{ name = "Files  ", action = ":lua Snacks.picker.files()", section = "" },
					{ name = "Projects  ", action = ":lua Snacks.dashboard.pick('projects')", section = "" },
					{ name = "Lazy 󰒲 ", action = ":Lazy", section = "" },
					{ name = "Mason  ", action = ":Mason", section = "" },
					{ name = "Quit 󰈆 ", action = ":qa!", section = "" },
					{ name = "New file  ", action = ":ene", section = "---" },
				},
				footer = "",
			})
		end,
	},
}
