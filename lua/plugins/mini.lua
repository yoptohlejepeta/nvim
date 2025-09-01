return {
  {
    "nvim-mini/mini.move",
    version = false,
    config = function()
      require("mini.move").setup()
    end,
  },
  {
    "nvim-mini/mini.surround",
    version = false,
    config = function()
      require("mini.surround").setup()
    end,
  },
  {
    "nvim-mini/mini.statusline",
    version = false,
    config = function()
      require("mini.statusline").setup()
    end,
  },
}
