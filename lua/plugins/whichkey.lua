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

     -- wk.add({
      --   { "<leader>f", group = "Find (Telescope)", mode = "n" },
      --   { "<leader>g", group = "Git (Gitsigns)",   mode = "n" },
      --   { "<leader>c", group = "Comment",          mode = "n" },
      --   { "<leader>t", group = "Theme",            mode = "n" },
      --   { "g",         group = "Goto",             mode = "n" },
      -- })
 wk.add({
  { "<leader>f", group = "Find (Telescope)", mode = "n" },
  { "<leader>g", group = "Git (Gitsigns)", mode = "n" },
  { "<leader>c", group = "Comment", mode = "n" },
  { "<leader>t", group = "Theme", mode = "n" },
  { "<leader>t", group = "Todo", mode = "n" }, -- Should include <leader>tl
  { "g", group = "Goto", mode = "n" },
})
    end,
  },
}
