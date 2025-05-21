return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    -- "rcarriga/nvim-notify",  -- uncomment for notifications ui
  },
  opts = {
    -- lsp = { signature = { auto_open = true } },
    presets = {
      lsp_doc_border = true
    }
  },
}
