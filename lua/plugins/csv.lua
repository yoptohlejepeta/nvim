return {
  {
    "hat0uma/csvview.nvim",
    event = { "BufReadPre", "BufNewFile" },
    ft = { "csv", "tsv" },
    config = function()
      -- Track the state manually since get_config is not available
      -- local csv_state = {
      --   header_line = 1,         -- Start with the first line as header
      --   display_mode = "border", -- Start with bordered display
      -- }

      require("csvview").setup({
        view = {
          display_mode = "border",
          header_lnum = 1,
          sticky_header= {
            enabled = true
          }
        },
        parser = {
          comments = { "#", "//" },
        },
        keymaps = {
          textobject_field_inner = { "if", mode = { "o", "x" } },
          textobject_field_outer = { "af", mode = { "o", "x" } },
          jump_next_field_end = { "<Tab>", mode = { "n", "v" } },
          jump_prev_field_end = { "<S-Tab>", mode = { "n", "v" } },
          jump_next_row = { "<Enter>", mode = { "n", "v" } },
          jump_prev_row = { "<S-Enter>", mode = { "n", "v" } },

          -- {
          --   "<leader>tc",
          --   function()
          --     require("csvview").toggle({ header_lnum = 1 })
          --   end,
          --   mode = "n",
          --   desc = "Toggle CSV View"
          -- },
        },
      })
    end,
  },
}
