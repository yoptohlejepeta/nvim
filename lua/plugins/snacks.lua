return {
  {
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
      bufdelete = { enabled = true },
      image = {
        formats = {
          "svg", "png", "jpg", "jpeg", "gif", "bmp", "webp", "tiff",
          "heic", "avif", "mp4", "mov", "avi", "mkv", "webm", "pdf",
        },
      },
      explorer = {
        replace_netrw = true,
        sources = {
          files = {
            hidden = true,                                 -- Show hidden files in explorer
            ignored = true,                                -- Show git-ignored files in explorer
            include = { ".env" },                          -- Explicitly include .env files
            exclude = { ".venv", "venv", "node_modules" }, -- Explicitly exclude .venv directory
          },
        },
      },
      picker = {
        icons = {
          files = {
            dir = "📁 ",
            dir_open = "📂 ",
          }
        },
        sources = {
          files = {
            hidden = true,
            ignored = true,
            ignore = {
              git_ignored = true,
              patterns = { ".venv", ".git" },
            },
            include = { ".env" },
            exclude = { ".venv", "venv", "node_modules" },
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
              preset = "sidebar",
              preview = false,
              reverse = false,
              layout = {
                width = 0.2,
              }
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
    },
  },
}
