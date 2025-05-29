return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          diagnostics = "nvim_lsp",
          show_close_icon = false,
          show_buffer_close_icons = false,
          always_show_bufferline = false,
          pick = {
            alphabet = "123456789"
          }
        },
      })

      -- vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "next buffer" })
      -- vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "prev buffer" })
      -- vim.keymap.set("n", "<leader>bd", ":BufferLinePickClose<CR>", { desc = "Pick buffer to close" })
      vim.keymap.set("n", "<leader>b", ":BufferLinePick<CR>", { desc = "Pick buffer" })
    end,
  },
}
