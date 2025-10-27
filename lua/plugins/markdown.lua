return {
	{
		"bullets-vim/bullets.vim",
		ft = { "markdown" },
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
		ft = { "markdown" },
		opts = {
			heading = {
				width = "block",
				sign = false,
				border = true,
			},
			code = {
				sign = false,
				width = "block",
			},
		},
	},
	{
		"OXY2DEV/helpview.nvim",
		lazy = false,
	},
}
