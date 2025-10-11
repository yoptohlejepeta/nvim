return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix",
    delay = 500,
    win = {
      border = "solid"
    },
    spec = {
      { "<leader>th", callback = function() require("nvchad.themes").open() end },
      { "<leader>w", hidden = true },
      { "<leader>q", hidden = true },
      { "<leader>f", group = "find", mode = "n", icon = { icon = " ", color = "white" } },
      { "<leader>ff", desc = "files", mode = "n", callback = function() require("snacks").picker.files() end },
      { "<leader>fg", desc = "live grep", mode = "n", callback = function() require("snacks").picker.grep({ hidden = true }) end },
      {
        "<leader>fb",
        desc = "buffers",
        mode = "n",
        callback = function() require("snacks").picker.buffers() end,
      },
      {
        "<leader>fh",
        desc = "help tags",
        mode = "n",
        callback = function() require("snacks").picker.help() end,
      },
      {
        "<leader>fl",
        desc = "lines",
        mode = "n",
        callback = function() require("snacks").picker.lines() end
      },
      {
        "<leader>ft",
        desc = "todos",
        mode = "n",
        callback = function()
          require("snacks").picker.todo_comments()
        end
      },
      {
        "<leader>fs",
        desc = "lsp symbols",
        mode = "n",
        callback = function()
          require("snacks").picker.lsp_symbols({ layout = { preset = "right" } })
        end
      },
      {
        "<leader>fS",
        desc = "workspace lsp symbols",
        mode = "n",
        callback = function()
          require("snacks").picker.lsp_workspace_symbols({ layout = { preset = "right" } })
        end
      },
      {
        "<leader>x",
        desc = "delete current bufffer",
        mode = "n",
        callback = function()
          require("snacks").bufdelete.delete()
        end
      },
      {
        "<leader>X",
        desc = "delete all other bufers",
        mode = "n",
        callback = function()
          require("snacks").bufdelete.other()
        end
      },
      { "<leader>g", group = "git", mode = "n" },
      {
        "<leader>go",
        mode = "n",
        callback = function() require("snacks").gitbrowse.open() end,
        desc = "open git repo",
        icon = { icon = " ", color = "white" }
      },
      { "<leader>gc", callback = function() require("snacks").picker.git_branches() end, desc = "git branches" },
      { "<leader>c", group = "comment/code action", mode = "n", icon = { icon = " ", color = "green" } },
      { "<leader>t", group = "theme", mode = "n", icon = { icon = " ", color = "white" } },
      { "<leader>e", desc = "Toggle file explorer", mode = "n", callback = function() require("snacks").explorer() end },
      {
        "<leader>E",
        desc = "Find current file in explorer",
        mode = "n",
        callback = function()
          require("snacks").picker.explorer({ follow_file = true })
        end,
      },
      { "g", group = "Goto", mode = "n" },
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
          require("snacks").lazygit.open()
        end
      },
      { "<leader>d", group = "debug", mode = "n" },
      { "<localleader>l", group = "latex", mode = "n", icon = { icon = " ", color = "green" } },
      { "<localleader>t", group = "typst", desc = "typst preview", mode = "n", icon = { icon = " ", color = "brown" } },
      { "<localleader>tl", "<cmd>TypstPreviewToggle<CR>", desc = "live preview (toggle)", mode = "n" },
      { "<localleader>tp", "<cmd>TypstWatch<CR>", desc = "preview pdf", mode = "n" },
      {
        "<leader>fi",
        function()
          require("snacks").picker.icons()
        end,
        desc = "find icons"
      },
      {
        "<leader>fd",
        function()
          require("snacks").picker.diagnostics_buffer()
        end,
        desc = "search buffer diagnostics",
        icon = { icon = "󰛯 ", color = "white" }
      },
      {
        "<leader>fD",
        callback = function()
          require("snacks").picker.diagnostics()
        end,
        desc = "search diagnostics",
        icon = { icon = "󰛯 ", color = "white" }
      },
      { "<C-\\>", callback = function() require("snacks").terminal.toggle() end, desc = "toggle terminal" },
      { "<C-|>",  callback = function() require("snacks").terminal.open() end,   desc = "temporary terminal" },
      {
        "gd",
        desc = "goto definition",
        mode = "n",
        callback = function() require("snacks").picker.lsp_definitions() end
      },
      -- { "<localleader>d", "<cmd>DBUIToggle<CR>", desc = "db view", icon = { icon = " ", color = "white" } },
      { "<localleader>i", callback = function() require("snacks").image.hover() end, desc = "image preview", icon = { icon = " ", color = "purple" } },
      { "<leader>ld", callback = function() require("snacks").terminal("lazydocker") end, desc = "lazydocker", icon = { icon = " ", color = "azure" } },
      { "<leader>y", callback = function() require("snacks").terminal("yazi") end, desc = "yazi", icon = { icon = "󰇥 ", color = "yellow" } }
    }
  }
}
