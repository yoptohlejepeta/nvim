return {
	"linux-cultist/venv-selector.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"mfussenegger/nvim-dap",
		"mfussenegger/nvim-dap-python",
		{ "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
	},
	lazy = false,
	keys = {
		{ ",v", "<cmd>VenvSelect<cr>" },
	},
	opts = {
		options = { picker = "telescope" },
		search = {
			uv = {
				command = "$FD '/python$' ~/.cache/uv/virtualenvs/ --full-path --color never",
			},
		},
	},
}
