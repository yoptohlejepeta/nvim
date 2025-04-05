return {
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          -- Nightfox Themes
          {
            name = "Nightfox",
            colorscheme = "nightfox",
            before = [[vim.o.background = "dark"]]
          },
          {
            name = "Duskfox",
            colorscheme = "duskfox",
            before = [[vim.o.background = "dark"]],
          },
          {
            name = "Nightfox Dayfox",
            colorscheme = "dayfox",
            before = [[vim.o.background = "light"]],
          },
          -- Catppuccin Themes
          {
            name = "Catppuccin Latte",
            colorscheme = "catppuccin",
            before = [[
              require("catppuccin").setup({ flavour = "latte" })
              vim.o.background = "light"
            ]],
          },
          {
            name = "Catppuccin Frappe",
            colorscheme = "catppuccin",
            before = [[
              require("catppuccin").setup({ flavour = "frappe" })
              vim.o.background = "dark"
            ]],
          },
          {
            name = "Catppuccin Macchiato",
            colorscheme = "catppuccin",
            before = [[
              require("catppuccin").setup({ flavour = "macchiato" })
              vim.o.background = "dark"
            ]],
          },
          {
            name = "Catppuccin Mocha",
            colorscheme = "catppuccin",
            before = [[
              require("catppuccin").setup({ flavour = "mocha" })
              vim.o.background = "dark"
            ]],
          },
          -- Gruvbox Themes
          {
            name = "Gruvbox Dark",
            colorscheme = "gruvbox",
            before = [[vim.o.background = "dark"]],
          },
          {
            name = "Gruvbox Light",
            colorscheme = "gruvbox",
            before = [[vim.o.background = "light"]],
          },
          -- TokyoNight Themes
          {
            name = "TokyoNight Storm",
            colorscheme = "tokyonight-storm",
            before = [[vim.o.background = "dark"]],
          },
          {
            name = "TokyoNight Moon",
            colorscheme = "tokyonight-moon",
            before = [[vim.o.background = "dark"]],
          },
          {
            name = "TokyoNight Night",
            colorscheme = "tokyonight-night",
            before = [[vim.o.background = "dark"]],
          },
          -- Rose Pine Themes
          {
            name = "Rose Pine Main",
            colorscheme = "rose-pine-main",
            before = [[vim.o.background = "dark"]],
          },
          {
            name = "Rose Pine Moon",
            colorscheme = "rose-pine-moon",
            before = [[vim.o.background = "dark"]],
          },
          {
            name = "Rose Pine Dawn",
            colorscheme = "rose-pine-dawn",
            before = [[vim.o.background = "light"]],
          },
          {
            name = "Dracula",
            colorscheme = "dracula",
            before = [[vim.o.background = "dark"]],
          },
        },
        livePreview = true,
      })

      vim.keymap.set("n", "<leader>th", ":Themery<CR>", { desc = "Open theme picker" })
    end,
  },
}
