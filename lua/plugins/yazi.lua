return {
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = { "folke/snacks.nvim" },
    config = function()
      require("yazi").setup({
        open_for_directories = true,
      })
    end,
    init = function()
      -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
      -- vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
    keys = {
      { "<leader>y", "<cmd>Yazi cwd<CR>", desc = "Open Yazi" },
    },
  },
}
