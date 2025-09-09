return {
  {
    "chomosuke/typst-preview.nvim",
    ft = "typst",
    opts = {
      dependencies_bin = {
        ["tinymist"] = "tinymist",
      },
      port = 0,
      partial_rendering = true,
      follow_cursor = true,
    },
  },
  -- {
  --   "kaarmu/typst.vim",
  --   ft = "typst",
  -- }
}
