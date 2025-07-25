return {
	{
		"nvchad/ui",
		config = function()
			require("nvchad")
		end,
	},
	{
		"nvchad/base46",
		lazy = false,
		build = function()
			require("base46").load_all_highlights()
		end,
	},
	{ "nvchad/volt", lazy = false },
	{
		"nvzone/minty",
		dependecioes = { "nvchad/volt" },
		cmd = { "Shades", "Huefy" },
	},
}
