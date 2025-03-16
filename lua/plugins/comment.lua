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
          line = "<leader>cc",
          block = "<leader>cb",
        },
        opleader = {
          line = "<leader>c",
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
