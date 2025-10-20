return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"lua",
					"python",
					"javascript",
					"dockerfile",
					"go",
					"julia",
					"markdown",
					"yaml",
					"bash",
					"regex",
					"templ",
					"html",
					"typst",
					"elm",
					"haskell",
					"gitcommit",
					"zig",
					"r",
				},
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = { enable = true },
			})
		end,
	},
}
