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
        { "<leader>w", hidden = true },
        { "<leader>q", hidden = true },
        { "<leader>f", group = "find", mode = "n", icon = { icon = " ", color = "white" } },
        { "<localleader>l", group = "latex", mode = "n" },
        {
          "<leader>ff",
          desc = "files",
          mode = "n",
          callback = function()
            require("snacks.picker").files()
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
          desc = "help tags",
          mode = "n",
          callback = function()
            require("snacks.picker").help()
          end,
        },
        {
          "<leader>fl",
          desc = "lines",
          mode = "n",
          callback = function()
            require("snacks.picker").lines()
          end
        },
        {
          "<leader>ft",
          desc = "todos",
          mode = "n",
          callback = function()
            require("snacks.picker").todo_comments()
          end
        },
        {
          "<leader>fs",
          desc = "lsp symbols",
          mode = "n",
          callback = function()
            require("snacks.picker").lsp_symbols()
          end
        },
        {
          "<leader>x",
          desc = "Delete current bufffer",
          mode = "n",
          callback = function()
            require("snacks.bufdelete").delete()
          end
        },
        { "<leader>g", group = "git", mode = "n" },
        {
          "<leader>gc",
          callback = function()
            require("snacks.picker").git_branches()
          end,
          desc = "git branches"
        },
        { "<leader>c", group = "comment/code action", mode = "n", icon = { icon = " ", color = "green" } },
        { "<leader>t", group = "theme", mode = "n", icon = { icon = " ", color = "white" } },
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
        { "<leader>b", group = "Buffer", mode = "n" },
        { "g",         group = "Goto",   mode = "n" },
        {
          "gr",
          callback = function()
            require("snacks.picker").lsp_references()
          end,
          nowait = true,
          desc = "references"
        },
        {
          "gh",
          callback = function ()
            require("snacks").dashboard({example = "compact_files"})
          end,
          desc = "home (dashboard)",
          icon = {icon = " ", color = "white"}
        },
        { "<leader>d", group = "diagnostics", mode = "n" },
        {
          "<localleader>c",
          desc = "csv toggle",
          mode = "n",
          callback = function()
            require("csvview").toggle()
          end,
          icon = { icon = " ", color = "green" },
        },
        { "<localleader>l", group = "latex", mode = "n", icon = { icon = " ", color = "green" } },
        { "<localleader>t", group = "typst", desc = "typst preview", mode = "n", icon = { icon = " ", color = "brown" } },
        { "<localleader>tl", "<cmd>TypstPreviewToggle<CR>", desc = "live preview (toggle)", mode = "n" },
        { "<localleader>tp", "<cmd>TypstWatch<CR>", desc = "preview pdf", mode = "n" },
        {
          "<localleader>m",
          "<cmd>MarkdownPreviewToggle<CR>",
          desc = "preview markdown",
          mode = "n",
          icon = { icon = " ", color = "white" }
        },
      })
    end,
  },
}
