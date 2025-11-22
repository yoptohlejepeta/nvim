return {
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local gs = require("gitsigns")
			gs.setup({
				signs = {
					add = { text = "▌" },
					change = { text = "▌" },
					delete = { text = "▌" },
					topdelete = { text = "▌" },
					changedelete = { text = "▌" },
				},
				signcolumn = true,
				numhl = false,
				linehl = false,
				current_line_blame = false,
			})
			vim.keymap.set("n", "<leader>gn", gs.next_hunk, { desc = "Next git hunk" })
			vim.keymap.set("n", "<leader>gp", gs.prev_hunk, { desc = "Previous git hunk" })
			vim.keymap.set("n", "<leader>gb", gs.blame_line, { desc = "Git blame line" })
			vim.keymap.set("n", "<leader>gd", gs.diffthis, { desc = "Git diff this" })
		end,
	},
	{
		"akinsho/git-conflict.nvim",
		version = "*",
		config = true,
	},
}
