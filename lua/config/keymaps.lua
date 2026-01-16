local map = vim.keymap.set

map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>Q", ":q!<CR>")

map("n", "<leader>m", ":update<CR> :make<CR>")

-- map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
-- map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "<C-a>", "gg<S-v>G", { desc = "select all" })

map("n", "<localleader>o", function()
	local ft = vim.bo.filetype

	print("Opening ", ft)
	if ft == "typst" then
		return vim.cmd("TypstPreviewToggle")
	elseif ft == "quarto" then
		return vim.cmd("QuartoPreview")
	else
		return vim.cmd("Open %")
	end
end)
