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
        styles = {                 -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "italic" }, -- Change the style of comments
        },
      })
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    opts = {
      keywordStyle = { italic = false },
      colors = {
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
  {
    "tiagovla/tokyodark.nvim",
    lazy = false,
    opts = {
      gamma = 1.1,
      styles = {
        comments = { italic = true },
        keywords = { italic = false },
        identifiers = { italic = false },
        functions = {},
        variables = {},
      },
    },
    config = function(_, opts)
      require("tokyodark").setup(vim.tbl_extend("force", opts, {
        custom_highlights = function(highlights, palette)
          highlights.String = { fg = palette.green }
          highlights.Function = { fg = palette.yellow }

          highlights.MiniIconsAzure = { fg = "#007fff" }
          highlights.MiniIconsBlue = { fg = palette.blue }
          highlights.MiniIconsCyan = { fg = palette.cyan }
          highlights.MiniIconsGreen = { fg = palette.green }
          highlights.MiniIconsGrey = { fg = palette.grey }
          highlights.MiniIconsOrange = { fg = palette.orange }
          highlights.MiniIconsPurple = { fg = palette.purple }
          highlights.MiniIconsRed = { fg = palette.red }
          highlights.MiniIconsYellow = { fg = palette.yellow }

          return highlights
        end,
      }))
    end
  },
}
