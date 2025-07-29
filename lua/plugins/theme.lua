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
            colorscheme = "kanagawa",
            before = [[vim.o.background = "dark"]],
          },
          {
            name = "kanagawa-dragon",
            colorscheme = "kanagawa-dragon",
            before = [[vim.o.background = "dark"]],
          },
          {
            name = "kanso",
            colorscheme = "kanso",
            before = [[vim.o.background = "dark"]],
          },
          {
            name = "evergarden",
            colorscheme = "evergarden",
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
    'everviolet/nvim',
    name = 'evergarden',
    priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
    opts = {
      theme = {
        variant = 'winter', -- 'winter'|'fall'|'spring'|'summer'
        accent = 'green',
      },
      editor = {
        transparent_background = false,
        sign = { color = 'none' },
        float = {
          color = 'mantle',
          solid_border = false,
        },
        completion = {
          color = 'surface0',
        },
      },
    }
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
