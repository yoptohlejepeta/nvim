return {
  {
    "hat0uma/csvview.nvim",
    ft = { "csv", "tsv" },
    config = function()
      require("csvview").setup({
        view = {
          display_mode = "border",
          header_lnum = 1,
          sticky_header = {
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
        },
      })

      local wk = require("which-key")

      wk.add {
        {
          "<localleader>c",
          desc = "csv toggle",
          mode = "n",
          callback = function()
            require("csvview").toggle()
          end,
          icon = { icon = " ", color = "green" },
        },
      }
    end,
  },
}
