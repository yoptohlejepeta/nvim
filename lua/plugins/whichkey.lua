return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")
      wk.setup({
        plugins = {
          spelling = { enabled = true },
        },
        win = {
          border = "single",
        },
      })

      wk.add({
        { "<leader>f", group = "Files",  mode = "n" },
        {
          "<leader>ff",
          desc = "Find files",
          mode = "n",
          callback = function()
            require("snacks.picker").files({ hidden = true })
          end,
        },
        {
          "<leader>fg",
          desc = "Live grep",
          mode = "n",
          callback = function()
            require("snacks.picker").grep({ hidden = true })
          end,
        },
        {
          "<leader>fb",
          desc = "Buffers",
          mode = "n",
          callback = function()
            require("snacks.picker").buffers()
          end,
        },
        {
          "<leader>fh",
          desc = "Help tags",
          mode = "n",
          callback = function()
            require("snacks.picker").help()
          end,
        },
        {
          "<leader>x",
          desc = "Delete current bufffer",
          mode = "n",
          callback = function()
            require("snacks.bufdelete").delete()
          end
        },
        { "<leader>g", group = "Git (Gitsigns)", mode = "n" },
        { "<leader>c", group = "Comment",        mode = "n" },
        { "<leader>t", group = "Theme",          mode = "n" },
        { "<leader>t", group = "Todo",           mode = "n" },
        {
          "<leader>e",
          desc = "Toggle file explorer",
          mode = "n",
          callback = function()
            require("snacks.picker").explorer()
          end,
        },
        {
          "<leader>E",
          desc = "Find current file in explorer",
          mode = "n",
          callback = function()
            require("snacks.picker").explorer({ follow_file = true })
          end,
        },
        { "<leader>b",  group = "Buffer",              mode = "n" },
        { "<leader>bn", desc = "Next buffer",          mode = "n" },
        { "<leader>bp", desc = "Previous buffer",      mode = "n" },
        { "<leader>bd", desc = "Pick buffer to close", mode = "n" },
        { "g",          group = "Goto",                mode = "n" },
      })
    end,
  },
}
