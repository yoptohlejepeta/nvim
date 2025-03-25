return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          python = { "ruff_format" },
          tex = { "latexindent" },
        },
        formatters = {
          stylua = {
            command = "stylua",
          },
          ruff_format = {
            command = "ruff",
            args = { "format", "--quiet", "-" },
            stdin = true,
          },
          latexindent = {
            command = "latexindent",
          },
        },
      })

      vim.keymap.set("n", "<leader>i", function()
        require("conform").format({ async = true, lsp_fallback = true })
      end, { desc = "Format buffer" })
    end,
  },
}
