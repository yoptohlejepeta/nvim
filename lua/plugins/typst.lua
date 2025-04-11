return {
  {
    "chomosuke/typst-preview.nvim",
    ft = "typst",
    opts = {
      dependencies_bin = {
        ["tinymist"] = "tinymist", -- Use Mason-installed tinymist
      },
      port = 0,                    -- Random port for preview server
      partial_rendering = true,    -- Enable incremental rendering for low latency
      follow_cursor = true,        -- Preview follows cursor
    },
  },
  {
    "kaarmu/typst.vim",
    ft = "typst",
  }
}
