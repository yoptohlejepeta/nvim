return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "python",
          "javascript",
          "go",
          "julia",
          "markdown",
          "yaml",
          "bash",
          "regex",
          "templ",
          "html",
          "rust",
          "typst",
          "elm",
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
      })
    end,
  },
}
