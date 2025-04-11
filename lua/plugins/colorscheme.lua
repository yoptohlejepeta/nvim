return {
  -- Nightfox (if not already installed)
  {
    "EdenEast/nightfox.nvim",
    lazy = false, -- Load immediately to ensure availability for Themery
  },
  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
  },
  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
  },
  -- TokyoNight
  {
    "folke/tokyonight.nvim",
    lazy = false,
  },
  -- Rose Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false
  },
  {
    "2nthony/vitesse.nvim",
    dependencies = {
      "tjdevries/colorbuddy.nvim"
    },
  }
}
