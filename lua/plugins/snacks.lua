return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      example = "compact_files",
      preset = {
        header = "", -- Override the default header with an empty string to remove it
      },
    },
  },
}
