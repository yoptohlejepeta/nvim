return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    config = function()
      require("catppuccin").setup({
        styles = {
          comments = { "italic" },
        },
      })
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
  },
  {
    "yoptohlejepeta/vim-dogrun",
    lazy = false,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    opts = {
      colors = {
        pallete = {
          -- carpYellow = "#e5c890"
        },
        theme = {
          all = {
            ui = {
              bg_gutter = "none"
            }
          }
        }
      }
    },
  },
}
