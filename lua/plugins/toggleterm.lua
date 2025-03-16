return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("toggleterm").setup({
        size = 20, -- Height for horizontal, width for vertical
        open_mapping = [[<C-\>]], -- Toggle terminal with Ctrl-\
        hide_numbers = true, -- Hide line numbers in terminal
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2, -- Darken the terminal background
        start_in_insert = true, -- Start in insert mode
        insert_mappings = true, -- Allow <C-\> in insert mode
        persist_size = true,
        direction = "float", -- Floating terminal
        close_on_exit = true, -- Close terminal when process exits
        shell = vim.o.shell, -- Use default shell
        float_opts = {
          border = "curved", -- Border style (single, double, curved)
          winblend = 0, -- Transparency (0 = opaque)
          highlights = {
            border = "Normal",
            background = "Normal",
          },
        },
      })
    end,
  },
}
