return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup({
      default = true,
      override = {
        css = {
          icon = " ",
          color = "#1572B6",
          name = "css"
        }
      }
    })
  end,
}
