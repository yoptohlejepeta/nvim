return {
  {
    "numToStr/Comment.nvim",
    event = "BufReadPost",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("Comment").setup({
        padding = true,
        sticky = true,
        toggler = {
          line = "<leader>/",
          block = "<leader>cb",
        },
        opleader = {
          line = "<leader>/",
          block = "<leader>cb",
        },
        extra = {
          above = "<leader>cO",
          below = "<leader>co",
          eol = "<leader>cA",
        },
        mappings = {
          basic = true,
          extra = true,
        },
      })
    end,
  },
}
