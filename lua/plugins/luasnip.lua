return {
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    config = function()
      local luasnip = require("luasnip")

      -- Load custom snippets from ~/.config/nvim/snippets/
      require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })

      -- Keybindings for snippet navigation
      vim.keymap.set({ "i", "s" }, "<C-k>", function()
        if luasnip.expand_or_jump() then
          return
        end
      end, { silent = true, desc = "Expand snippet or jump to next placeholder" })

      vim.keymap.set({ "i", "s" }, "<C-j>", function()
        if luasnip.jumpable(-1) then
          luasnip.jump(-1)
        end
      end, { silent = true, desc = "Jump to previous placeholder" })

      vim.keymap.set("i", "<C-l>", function()
        if luasnip.choice_active() then
          luasnip.change_choice(1)
        end
      end, { silent = true, desc = "Cycle through snippet choices" })
    end,
  },
}
