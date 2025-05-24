return {
  "folke/snacks.nvim",
  priority = 1000,
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  lazy = false,
  ---@type snacks.Config
  opts = {
    toggle = { which_key = true, map = vim.keymap.set, notify = true },
    bigfile = { enabled = true },
    words = { enabled = true },
    bufdelete = { enabled = true },
    image = {
      enabled = true,
      doc = {
        inline = false,
        float = false
      }
    },
    explorer = {
      replace_netrw = true,
      sources = {
        files = {
          hidden = true,
          ignored = true,
          include = { ".env" },
          exclude = { ".venv", "venv", "node_modules", ".git" },
        },
      },
    },
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
          formatters = {
            severity = { pos = "right" },
          },
        },
      },
    },
    dashboard = {
      example = "compact_files",
      preset = {
        header = "",
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
