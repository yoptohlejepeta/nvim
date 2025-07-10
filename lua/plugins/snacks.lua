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
        float = false
      }
    },
    -- explorer = {
    --   replace_netrw = true,
    --   sources = {
    --     files = {
    --       hidden = true,
    --       ignored = true,
    --       include = { ".env" },
    --       exclude = { ".venv", "venv", "node_modules", ".git" },
    --     },
    --   },
    -- },
    picker = {
      sources = {
        files = {
          hidden = true,
          ignored = true,
          ignore = {
            git_ignored = true,
            patterns = { ".venv", ".git" },
          },
          include = { ".env" },
          exclude = { ".venv", "venv", "node_modules", "*cache*", ".hypothesis" },
        },
        explorer = {
          follow_file = true,
          tree = true,
          git_status = true,
          git_status_open = false,
          git_untracked = true,
          diagnostics = true,
          diagnostics_open = false,
          watch = true,
          jump = { close = true },
          hidden = true,
          layout = {
            preview = "false",
            layout = {
              backdrop = false,
              width = 30,
              min_width = 20,
              height = 0,
              position = "left",
              border = "none",
              box = "vertical",
              { win = "list", border = "none" },
            },
          },
          ignore = {
            git_ignored = false,
            patterns = { ".git" }
          },
          include = { ".env" },
          exclude = { ".venv" },
          formatters = { severity = { pos = "right" } },
        },
      },
    },
    -- dashboard = {
    --   example = "compact_files",
    --   preset = {
    --     header = "",
    --   },
    -- },
    dashboard = {
      preset = {
        header = "================================================================",
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          -- { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = "󰣪 ", key = "M", desc = "Mason", action = ":Mason", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
      sections = {
        { section = "header" },
        { section = "keys", gap = 1, padding = 1 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        {
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        },
      },
    },
    terminal = {
      win = {
        wo = {
          winbar = ""
        }
      }
    }
  },
}
