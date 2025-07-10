return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    config = function()
      local wk = require("which-key")

      wk.add {
        {
          "<localleader>m",
          "<cmd>MarkdownPreviewToggle<CR>",
          desc = "preview markdown",
          mode = "n",
          icon = { icon = " ", color = "white" }
        },
      }
    end
  },
  {
    "bullets-vim/bullets.vim",
    ft = { "markdown" }
    -- cmd = { "SelectBullet" }
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    ft = { "markdown" },
    opts = {
      heading = {
        width = 'block',
        sign = false,
        border = true,
      },
      code = {
        sign = false,
        width = 'block'
      }
    },
  }
}
