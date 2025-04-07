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
      toggle = { enabled = true, which_key = true, map = vim.keymap.set, notify = true },
      bigfile = { enabled = true },
      bufdelete = { enabled = true },
      image = {
        enabled = true,
        formats = {
          "svg",
          "png",
          "jpg",
          "jpeg",
          "gif",
          "bmp",
          "webp",
          "tiff",
          "heic",
          "avif",
          "mp4",
          "mov",
          "avi",
          "mkv",
          "webm",
          "pdf",
        },
      },
      explorer = {
        replace_netrw = true,
        enabled = true,
      },
      picker = {
        prompt = "👉 ",
        enabled = true,
        sources = {
          explorer = {
            follow_file = true,
            tree = true,              -- Show the file tree
            git_status = true,        -- Show git status
            git_status_open = false,  -- Don’t show recursive git status for open directories
            git_untracked = true,     -- Show untracked files
            diagnostics = true,       -- Show diagnostics
            diagnostics_open = false, -- Don’t show recursive diagnostics for open directories
            watch = true,             -- Watch for file changes
            jump = { close = true },
            layout = {
              preset = "sidebar",
              preview = false,
              reverse = false,
              layout = {
                width = 0.2,
              }
            },
            formatters = {
              -- file = { filename_only = true }, -- Show only filenames
              severity = { pos = "right" }, -- Show severity on the right
            },
          },
        },
      },
      dashboard = {
        enabled = true,
        example = "compact_files",
        preset = {
          header = "",
        },
      },
    },
  },
}
