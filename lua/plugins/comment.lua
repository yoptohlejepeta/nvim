return {
	{
		"numToStr/Comment.nvim",
		event = "BufReadPost",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("Comment").setup({
				padding = true,
				sticky = true,
				toggler = {
					block = "gcb",
				},
				opleader = {
					block = "gcb",
				},
				mappings = {
					basic = true,
					extra = true,
				},
			})
		end,
	},
}
