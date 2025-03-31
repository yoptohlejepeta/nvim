return {
  {
    "github/copilot.vim",
    config = function()
      vim.g.copilot_no_tab_map = true

      vim.keymap.set("i", "<S-Tab>", 'copilot#Accept("<CR>")',
        { noremap = true, silent = true, expr = true, replace_keycodes = false })
      vim.keymap.set("i", "<S-n>", "<Plug>(copilot-next)", { silent = true })
      vim.keymap.set("i", "<S-p>", "<Plug>(copilot-previous)", { silent = true })
      vim.keymap.set("i", "<C-]>", "<Plug>(copilot-dismiss)", { silent = true })

      vim.g.copilot_filetypes = {
        ["*"] = true, -- Enable for all filetypes by default
        tex = true,   -- Explicitly enable for LaTeX files
      }
    end,
  },
}
