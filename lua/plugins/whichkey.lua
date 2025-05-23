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
      })
      local snacks = require("snacks")

      wk.add({
        { "<leader>w", hidden = true },
        { "<leader>q", hidden = true },
        { "<leader>f", group = "find", mode = "n", icon = { icon = " ", color = "white" } },
        { "<leader>ff", desc = "files", mode = "n", callback = function() snacks.picker.files() end },
        { "<leader>fg", desc = "live grep", mode = "n", callback = function() snacks.picker.grep({ hidden = true }) end },
        {
          "<leader>fb",
          desc = "buffers",
          mode = "n",
          callback = function()
            snacks.picker.buffers()
          end,
        },
        {
          "<leader>fh",
          desc = "help tags",
          mode = "n",
          callback = function()
            snacks.picker.help()
          end,
        },
        {
          "<leader>fl",
          desc = "lines",
          mode = "n",
          callback = function()
            snacks.picker.lines({layout = {preset = "vscode"}})
          end
        },
        {
          "<leader>ft",
          desc = "todos",
          mode = "n",
          callback = function()
            snacks.picker.todo_comments()
          end
        },
        {
          "<leader>fs",
          desc = "lsp symbols",
          mode = "n",
          callback = function()
            snacks.picker.lsp_symbols()
          end
        },
        {
          "<leader>fS",
          desc = "workspace lsp symbols",
          mode = "n",
          callback = function()
            snacks.picker.lsp_workspace_symbols()
          end
        },
        {
          "<leader>x",
          desc = "delete current bufffer",
          mode = "n",
          callback = function()
            snacks.bufdelete.delete()
          end
        },
        {
          "<leader>X",
          desc = "delete all other bufers",
          mode = "n",
          callback = function()
            snacks.bufdelete.other()
          end
        },
        { "<leader>g", group = "git", mode = "n" },
        {
          "<leader>go",
          mode = "n",
          callback = function() snacks.gitbrowse.open() end,
          desc = "open git repo",
          icon = { icon = " ", color = "white" }
        },
        { "<leader>gc", callback = function() snacks.picker.git_branches() end, desc = "git branches" },
        { "<leader>c", group = "comment/code action", mode = "n", icon = { icon = " ", color = "green" } },
        { "<leader>t", group = "theme", mode = "n", icon = { icon = " ", color = "white" } },
        { "<leader>e", desc = "Toggle file explorer", mode = "n", callback = function() snacks.explorer() end },
        {
          "<leader>E",
          desc = "Find current file in explorer",
          mode = "n",
          callback = function()
            snacks.picker.explorer({ follow_file = true })
          end,
        },
        { "<leader>b", group = "Buffer", mode = "n" },
        { "g",         group = "Goto",   mode = "n" },
        {
          "grr",
          callback = function()
            require("snacks.picker").lsp_references()
          end,
          nowait = true,
          desc = "references"
        },
        {
          "gh",
          callback = function()
            require("snacks").dashboard({ example = "compact_files" })
          end,
          desc = "home (dashboard)",
          icon = { icon = " ", color = "white" }
        },
        {
          "<leader>gl",
          mode = "n",
          desc = "lazygit",
          callback = function()
            snacks.lazygit.open()
          end
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
        {
          "<leader>.", function() require("snacks").scratch() end, desc = "Toggle Scratch Buffer"
        },
        { "<leader>S", function() require("snacks.scratch").select() end,  desc = "Select Scratch Buffer" },
        {
          "<leader>fi",
          function()
            snacks.picker.icons()
          end,
          desc = "find icons"
        },
        {
          "<leader>fd",
          function()
            snacks.picker.diagnostics_buffer()
          end,
          desc = "search buffer diagnostics",
          icon = { icon = "󰛯 ", color = "white" }
        },
        {
          "<leader>fD",
          callback = function()
            snacks.picker.diagnostics()
          end,
          desc = "search diagnostics",
          icon = { icon = "󰛯 ", color = "white" }
        },
        { "<C-\\>",    callback = function() snacks.terminal.toggle() end, desc = "toggle terminal" },
        {
          "gd",
          desc = "goto definition",
          mode = "n",
          callback = function()
            snacks.picker.lsp_definitions()
          end
        },
        { "<localleader>d", "<cmd>DBUIToggle<CR>", desc = "db view", icon = { icon = " ", color = "white" } },
        { "<localleader>i", callback = function() snacks.image.hover() end, desc = "image preview", icon = { icon = " ", color = "purple" } }
      })
    end,
  },
}
