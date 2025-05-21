vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "<leader>a", "gg<S-v>G", { desc = "select all" })
vim.keymap.set("n", "<C-l>", "zL", { desc = "half screen right" })
vim.keymap.set("n", "<C-h>", "zH", { desc = "half screen left" })
-- vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })


-- vim.keymap.del("n", "<C-s>") -- i dont know why this doesnt work
