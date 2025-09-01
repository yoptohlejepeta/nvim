return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    config = function()
      require("nightfox").setup({
        options = {
          styles = {
            comments = "italic"
          }
        }
      })
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}
