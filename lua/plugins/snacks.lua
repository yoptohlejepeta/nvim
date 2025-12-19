return {
  "folke/snacks.nvim",
  priority = 1000,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    bufdelete = { enabled = true },
    image = {
      enabled = true,
      doc = {
        inline = false,
        float = false,
      },
    },
    picker = { enabled = true },
    dashboard = { enabled = true, preset = { header = "" } },
    terminal = {
      win = {
        wo = {
          winbar = "",
        },
      },
    },
  },
}
