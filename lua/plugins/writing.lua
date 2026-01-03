return {
	{
		"lervag/vimtex",
		lazy = false,
		init = function()
			vim.g.vimtex_view_method = "general"
			vim.g.vimtex_complete_enable = 1
			vim.g.vimtex_quickfix_mode = 0
			vim.g.vimtex_imaps_enabled = 1
			vim.g.vimtex_compiler_method = "latexmk"
			vim.g.vimtex_compiler_latexmk = {
				options = {
					"-shell-escape",
					"-verbose",
					"-file-line-error",
					"-synctex=1",
					"-interaction=nonstopmode",
				},
			}
		end,
	},
	{
		"chomosuke/typst-preview.nvim",
		ft = "typst",
		opts = {
			dependencies_bin = {
				["tinymist"] = "tinymist",
			},
			port = 0,
			partial_rendering = true,
			follow_cursor = true,
		},
	},
	{
		"toppair/peek.nvim",
		event = { "VeryLazy" },
		build = "deno task --quiet build:fast",
		config = function()
			local peek = require("peek")
			peek.setup({
				app = "browser",
			})
			vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
			vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
		end,
	},
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
