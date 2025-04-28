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
          separator_style = "slant",
          diagnostics = "nvim_lsp",
          show_close_icon = false,
          show_buffer_close_icons = false,
          always_show_bufferline = false,
          offsets = {
            {
              filetype = "NvimTree",
              text = "🗺️ explorer",
              highlight = "Directory",
              separator = true,
              text_align = "center",
              padding = 0,
            },
          },
          custom_filter = function(buf_number)
            local buftype = vim.fn.getbufvar(buf_number, "&buftype")
            return buftype ~= "terminal" and buftype ~= "nofile"
          end,
        },
      })

      vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "next buffer" })
      vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "prev buffer" })
      vim.keymap.set("n", "<leader>bd", ":BufferLinePickClose<CR>", { desc = "Pick buffer to close" })
      vim.keymap.set("n", "<leader>bb", ":BufferLinePick<CR>", { desc = "Pick buffer" })

    end,
  },
}
