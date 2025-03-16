return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          python = { "ruff_format" }, -- Use a custom formatter name
          tex = { "latexindent" },
        },
        formatters = {
          stylua = {
            command = "stylua",
          },
          ruff_format = {
            command = "ruff",
            args = { "format", "--output-format", "text", "--quiet", "$FILENAME" }, -- Output formatted content to stdout
            stdin = false, -- Ruff writes to file, not stdout
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
