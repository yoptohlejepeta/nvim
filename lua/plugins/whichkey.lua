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
        { "<leader>f", group = "Find (Telescope)", mode = "n" },
        { "<leader>g", group = "Git (Gitsigns)", mode = "n" },
        { "<leader>c", group = "Comment", mode = "n" },
        { "<leader>t", group = "Theme", mode = "n" },
        { "<leader>t", group = "Todo", mode = "n" },
        { "<leader>e", desc = "Toggle file explorer", mode = "n" },
        { "<leader>E", desc = "Find current file in explorer", mode = "n" },
        { "<leader>b", group = "Buffer", mode = "n" },
        { "<leader>bn", desc = "Next buffer", mode = "n" },
        { "<leader>bp", desc = "Previous buffer", mode = "n" },
        { "<leader>bd", desc = "Pick buffer to close", mode = "n" },
        { "g", group = "Goto", mode = "n" },
        { "<M-Enter>", desc = "Send Julia code block to REPL", mode = { "n", "v" } },
      })
    end,
  },
}
