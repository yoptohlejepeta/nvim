return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      explorer = {
        replace_netrw = true,
        enabled = true,
      },
      picker = {
        enabled = true,
        sources = {
          explorer = {
            follow_file = true,
            tree = true, -- Show the file tree
            git_status = true, -- Show git status
            git_status_open = false, -- Don’t show recursive git status for open directories
            git_untracked = true, -- Show untracked files
            diagnostics = true, -- Show diagnostics
            diagnostics_open = false, -- Don’t show recursive diagnostics for open directories
            watch = true, -- Watch for file changes
            jump = { close = true },
            layout = { preset = "sidebar", preview = false }, -- Open as a sidebar without preview
            formatters = {
              file = { filename_only = true }, -- Show only filenames
              severity = { pos = "right" }, -- Show severity on the right
            },
          },
        },
      },
      dashboard = {
        enabled = true,
        example = "compact_files",
        preset = {
          header = "", -- Keep your custom header
        },
      },
    },
  },
}
