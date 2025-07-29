return {
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          -- Nightfox Themes
          -- TokyoNight Themes
          {
            name = "kanagawa",
            colorscheme = "kanagawa-wave",
            before = [[vim.o.background = "dark"]],
          },
          {
            name = "kanso",
            colorscheme = "kanso",
            before = [[vim.o.background = "dark"]],
          },
          {
            name = "gruvbox",
            colorscheme = "gruvbox-material",
            before = [[vim.o.background = "dark"]],
          }
        },
        livePreview = true,
      })

      vim.keymap.set("n", "<leader>th", ":Themery<CR>", { desc = "Open theme picker" })
    end,
  },
  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "material"
      vim.cmd.colorscheme('gruvbox-material')
    end
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
}
