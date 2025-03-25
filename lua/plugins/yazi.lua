return {
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("yazi").setup({
        open_for_directories = false,
      })
    end,
    keys = {
      { "<leader>y", "<cmd>Yazi<CR>", desc = "Open Yazi" },
    },
  },
}
