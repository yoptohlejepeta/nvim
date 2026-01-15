return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		event = "BufReadPost",
		opts = {},
	},
	{
		"Wansmer/treesj",
		keys = { "<leader>," },
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			local tj = require("treesj")

			tj.setup({
				use_default_keymaps = false,
				max_join_length = 100,
			})

			local wk = require("which-key")

			wk.add({
				{
					"<leader>,",
					desc = "toggle split",
					callback = function()
						tj.toggle()
					end,
				},
			})
		end,
	},
	{
		"m4xshen/hardtime.nvim",
		lazy = false,
		dependencies = { "MunifTanjim/nui.nvim" },
		opts = {
			enabled = false,
		},
	},
	{
		"sourcegraph/amp.nvim",
		branch = "main",
		lazy = false,
		opts = { auto_start = true, log_level = "info" },
	},
	{
		"alexpasmantier/krust.nvim",
		ft = "rust",
		opts = {
			keymap = "<leader>k",
		},
	},
	{
		{
			"folke/lazydev.nvim",
			ft = "lua",
			opts = {
				library = {
					-- See the configuration section for more details
					-- Load luvit types when the `vim.uv` word is found
					-- { path = "${3rd}/luv/library", words = { "vim%.uv" } },
					-- -- Love2D types
					{ path = "${3rd}/love2d/library", words = { "love" } },
				},
			},
		},
	},
}
