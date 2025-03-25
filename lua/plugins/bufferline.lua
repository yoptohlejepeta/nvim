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
          separator_style = "slant", -- Revert to original slant separators
          diagnostics = "nvim_lsp", -- Keep diagnostics, but remove custom indicator
          show_close_icon = false,
          show_buffer_close_icons = true,
          always_show_bufferline = false, -- Hide with one buffer
          offsets = {
            {
              filetype = "NvimTree",
              text = nil,
              highlight = "Directory",
              separator = true,
              text_align = "left",
              padding = 0,
            },
          },
          custom_filter = function(buf_number)
            local buftype = vim.fn.getbufvar(buf_number, "&buftype")
            return buftype ~= "terminal" and buftype ~= "nofile"
          end,
        },
      })

      local function close_current_buffer()
        local current_buf = vim.api.nvim_get_current_buf()
        local buf_list = vim.api.nvim_list_bufs()
        local loaded_bufs = {}

        for _, buf in ipairs(buf_list) do
          if vim.api.nvim_buf_is_loaded(buf) and
             vim.fn.getbufvar(buf, "&buftype") ~= "terminal" and
             buf ~= current_buf then
            table.insert(loaded_bufs, buf)
          end
        end

        if #loaded_bufs > 0 then
          vim.cmd("BufferLineCycleNext")
        end

        vim.cmd("bdelete " .. current_buf)
      end

      vim.keymap.set("n", "<leader>bn", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
      vim.keymap.set("n", "<leader>bp", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
      vim.keymap.set("n", "<leader>bd", ":BufferLinePickClose<CR>", { desc = "Pick buffer to close" })
      vim.keymap.set("n", "<leader>bx", close_current_buffer, { desc = "Close current buffer" })
    end,
  },
}
