return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    config = function()
      require("nvim-tree").setup({
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          width = 20,
          side = "left",
          signcolumn = "no",
          float = {
            enable = false,
          },
        },
        renderer = {
          group_empty = true,
          highlight_git = true,
          add_trailing = false,
          indent_markers = {
            enable = true,
          },
          icons = {
            glyphs = {
              folder = {
                default = "📁",
                open = "📂",
                empty = "📁",
                empty_open = "📂",
              }
            },
            show = {
              file = true,
              folder = true,
              folder_arrow = false,
              git = true,
            },
            padding = " ",
          },
          root_folder_label = false,
          root_folder_modifier = ":t",
          special_files = {},
        },
        filters = {
          dotfiles = false,
          custom = { "^.git$" },
        },
        git = {
          enable = true,
          ignore = true,
          timeout = 500,
        },
        actions = {
          open_file = {
            quit_on_open = true,
            window_picker = {
              enable = true,
            },
          },
        },
      })

      vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
      vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeFindFile<CR>", { desc = "Find current file in explorer" })
    end,
  },
}
