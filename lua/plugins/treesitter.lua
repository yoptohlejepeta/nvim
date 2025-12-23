---@diagnostic disable: missing-fields
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "c",
          "bash",
          "dockerfile",
          "elm",
          "haskell",
          "html",
          "css",
          "scss",
          "javascript",
          "julia",
          "lua",
          "markdown",
          "markdown_inline",
          "python",
          "toml",
          "r",
          "regex",
          "templ",
          "typst",
          "latex",
          "norg",
          "yaml",
          "zig",
          "sql",
          "gitcommit",
          "gitignore",
          "go",
          "gomod",
          "gosum",
          "nix",
          "typescript",
          "rust",
          "dart",
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      local tscontext = require("treesitter-context")
      tscontext.setup({
        max_lines = 3,
      })

      local wk = require("which-key")
      wk.add({
        "[c",
        desc = "go to context",
        callback = function()
          tscontext.go_to_context(vim.v.count1)
        end,
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      local tree = require("nvim-treesitter.configs")

      tree.setup({
        textobjects = {
          select = {
            enable = true,
            lookahead = false,
            keymaps = {
              ["af"] = { query = "@function.outer", desc = "Function outer" },
              ["if"] = { query = "@function.inner", desc = "Function inner" },
              ["aa"] = { query = "@parameter.outer", desc = "Parameter outer" },
              ["ia"] = { query = "@parameter.inner", desc = "Parameter inner" },
              ["ac"] = { query = "@class.outer", desc = "Class outer" },
              ["ic"] = { query = "@class.inner", desc = "Class inner" },
              ["as"] = { query = "@local.scope", query_group = "locals", desc = "Language scope" },
              ["aC"] = { query = "@comment.outer", desc = "Comment outer" },
              ["iC"] = { query = "@comment.inner", desc = "Comment inner" },
            },
          },
          swap = {
            enable = true,
            swap_next = {
              ["<leader>a"] = "@parameter.inner",
            },
            swap_previous = {
              ["<leader>A"] = "@parameter.inner",
            },
          },
        },
      })
    end,
  },
}
