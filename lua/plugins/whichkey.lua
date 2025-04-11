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
        preset = "helix",
        win = {
          border = "single",
        },
      })

      wk.add({
        { "<leader>w",      hidden = true },
        { "<leader>q",      hidden = true },
        { "<leader>f",      group = "files", mode = "n" },
        { "<localleader>l", group = "latex", mode = "n" },
        {
          "<leader>ff",
          desc = "find files",
          mode = "n",
          callback = function()
            require("snacks.picker").files({ hidden = true })
          end,
        },
        {
          "<leader>fg",
          desc = "live grep",
          mode = "n",
          callback = function()
            require("snacks.picker").grep({ hidden = true })
          end,
        },
        {
          "<leader>fb",
          desc = "buffers",
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
        { "<leader>g", group = "git",         mode = "n" },
        {
          "<leader>gc",
          callback = function()
            require("snacks.picker").git_branches()
          end,
          desc = "git branches"
        },
        { "<leader>c", group = "comment",     mode = "n" },
        { "<leader>t", group = "todo/themes", mode = "n" },
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
        { "<leader>b", group = "Buffer",      mode = "n" },
        { "g",         group = "Goto",        mode = "n" },
        { "<leader>d", group = "diagnostics", mode = "n" },
        {
          "<localleader>c",
          desc = "csv toggle",
          mode = "n",
          callback = function()
            require("csvview").toggle()
          end
        },
        { "<localleader>t",  group = "typst",                  desc = "typst preview",        mode = "n" },
        { "<localleader>tl", "<cmd>TypstPreviewToggle<CR>",    desc = "live preview browser", mode = "n" },
        { "<localleader>tp", "<cmd>TypstWatch<CR>",            desc = "preview pdf",          mode = "n" },
        { "<localleader>m",  "<cmd>MarkdownPreviewToggle<CR>", desc = "preview markdown",     mode = "n" }
      })
    end,
  },
}
