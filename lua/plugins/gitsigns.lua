return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" }, -- Load on buffer open
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "+" },
          change = { text = "~" },
          delete = { text = "_" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
        },
        signcolumn = true,          -- Show signs in the gutter
        numhl = false,              -- Don’t highlight line numbers
        linehl = false,             -- Don’t highlight changed lines
        current_line_blame = false, -- Enable with keymap if desired
      })

      -- Keymaps for Gitsigns
      local gs = require("gitsigns")
      vim.keymap.set("n", "<leader>gn", gs.next_hunk, { desc = "Next git hunk" })
      vim.keymap.set("n", "<leader>gp", gs.prev_hunk, { desc = "Previous git hunk" })
      vim.keymap.set("n", "<leader>gb", gs.blame_line, { desc = "Git blame line" })
      vim.keymap.set("n", "<leader>gd", gs.diffthis, { desc = "Git diff this" })
    end,
  },
}
