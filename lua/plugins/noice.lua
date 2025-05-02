return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts = {
    lsp = { signature = { auto_open = false } },
    presets = {
      lsp_doc_border = true
    }
  },
}
