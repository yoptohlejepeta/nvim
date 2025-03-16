return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "BufReadPost",
    opts = {
      signs = false,
      keywords = {
        TODO = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
      colors = {
        error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
        warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
        info = { "DiagnosticInfo", "#2563EB" },
        hint = { "DiagnosticHint", "#10B981" },
        default = { "Identifier", "#7C3AED" },
        test = { "Identifier", "#FF00FF" },
      },
      search = {
        command = "rg",
        args = {
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
        },
        pattern = [[\b(KEYWORDS):]],
      },
    },
    config = function(_, opts)
      require("todo-comments").setup(opts)
      vim.keymap.set("n", "<leader>tt", "<cmd>TodoTelescope<CR>",
        { desc = "Search through all project todos with Telescope." })
      vim.keymap.set("n", "<leader>tl", "<cmd>TodoLocList<CR>",
        { desc = "This uses the location list to show all todos in your project." })
      vim.keymap.set("n", "<leader>tq", "<cmd>TodoLocList<CR>",
        { desc = "This uses the quickfix list to show all todos in your project." })
      vim.keymap.set("n", "]t", require("todo-comments").jump_next, { desc = "Next TODO" })
      vim.keymap.set("n", "[t", require("todo-comments").jump_prev, { desc = "Previous TODO" })
    end,
  },
}
