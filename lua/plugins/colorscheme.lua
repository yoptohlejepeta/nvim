return {
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('nordic').load()
      vim.cmd("colorscheme nordic")
    end
  },
  {
    "norcalli/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        names = false,
        mode = "background",
      },
    },
    config = function()
      require("colorizer").setup()
    end,
  },
}
