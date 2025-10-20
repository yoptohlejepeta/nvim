return {
	-- {
	--   "iamcco/markdown-preview.nvim",
	--   cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	--   ft = { "markdown" },
	--   build = "cd app && npm install",
	--   init = function()
	--     vim.g.mkdp_filetypes = { "markdown" }
	--   end,
	--   config = function()
	--     local wk = require("which-key")
	--
	--     wk.add {
	--       {
	--         "<localleader>m",
	--         "<cmd>MarkdownPreviewToggle<CR>",
	--         desc = "preview markdown",
	--         mode = "n",
	--         icon = { icon = " ", color = "white" }
	--       },
	--     }
	--   end
	-- },
	-- {
	--   "OXY2DEV/markview.nvim",
	--   lazy = false,
	--   priority = 49,
	--   dependencies = {
	--     "saghen/blink.cmp"
	--   },
	--   opts = {
	--     preview = {
	--       modes = { "i", "n", "no", "c" },
	--       hybrid_modes = { "n", "i" },
	--
	--       linewise_hybrid_mode = true,
	--     },
	--   }
	-- },
	{
		"bullets-vim/bullets.vim",
		ft = { "markdown" },
		-- cmd = { "SelectBullet" }
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
