return {
  "folke/snacks.nvim",
  priority = 1000,
  dependencies = {
    "nvim-mini/mini.icons",
  },
  lazy = false,
  ---@type snacks.Config
  opts = {
    notifier = { enabled = true },
    bigfile = { enabled = true },
    bufdelete = { enabled = true },
    image = {
      doc = {
        inline = false,
        float = false,
      },
    },
    statuscolumn = { enabled = true },
    picker = {
      layout = {
        preset = function()
          return vim.o.columns >= 80 and "default" or "vertical"
        end,
      },
      layouts = {
        default = {
          layout = {
            width = 0.99,
            height = 0.99,
          },
        },
      },
    },
    dashboard = {
      preset = {
        header = "",
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          -- { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          -- { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "M", desc = "Mason", action = ":Mason", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "G", desc = "LazyGit", action = ":lua Snacks.lazygit.open()", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "D", desc = "LazyDocker", action = ":lua Snacks.terminal('lazydocker')", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
    terminal = {
      win = {
        wo = {
          winbar = "",
        },
      },
    },
  },
}
