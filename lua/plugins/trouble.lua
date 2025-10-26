return {
	"folke/trouble.nvim",
	opts = {
    focus = true
  }, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{
			"<leader>fD",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics",
		},
		{
			"<leader>fd",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Buffer Diagnostics",
		},
		{
			"<leader>fs",
			"<cmd>Trouble symbols toggle focus=true<cr>",
			desc = "LSP symbols",
		},
		{
			"<leader>fS",
			"<cmd>Trouble lsp toggle win.position=right focus=true<cr>",
			desc = "LSP Definitions / references / ... (Trouble)",
		},
		{
			"<leader>fL",
			"<cmd>Trouble loclist toggle<cr>",
			desc = "Location List (Trouble)",
		},
		{
			"<leader>fQ",
			"<cmd>Trouble qflist toggle<cr>",
			desc = "Quickfix List (Trouble)",
		},
	},
}
