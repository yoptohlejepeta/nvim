return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "ruff_format" },
					tex = { "latexindent" },
					elm = { "elm-format" },
				},
				formatters = {
					stylua = {
						command = "stylua",
					},
					ruff_format = {
						command = "ruff",
						args = { "format", "--quiet", "-" },
						stdin = true,
					},
					latexindent = {
						command = "latexindent",
					},
				},
			})

			vim.keymap.set("n", "<leader>i", function()
				require("conform").format({
					async = true,
					lsp_format = "fallback", -- use lsp if no formatter configured
				})
			end, { desc = "Format buffer" })
		end,
	},
}
