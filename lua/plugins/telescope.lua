return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          layout_strategy = "horizontal",
          layout_config = {
            prompt_position = "top",
          },
          sorting_strategy = "ascending",
          mappings = {
            i = {
              ["<C-j>"] = "move_selection_next",
              ["<C-k>"] = "move_selection_previous",
            },
          },
        },
        pickers = {
          find_files = {
            hidden = true,
            no_ignore = true,
            file_ignore_patterns = { "%.git/", "%.venv/", "__pycache__/", "node_modules/", "%.pytest_cache/" },
          },
        },
      })
    end,
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<CR>",     desc = "Find files" },
      { "<leader>fg", "<cmd>Telescope live_grep<CR>",      desc = "Live grep" },
      { "<leader>fb", "<cmd>Telescope buffers<CR>",        desc = "Find buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<CR>",      desc = "Help tags" },
      { "<leader>fr", "<cmd>Telescope lsp_references<CR>", desc = "LSP references" },
    },
  },
}
