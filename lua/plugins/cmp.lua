return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "hrsh7th/cmp-nvim-lsp-signature-help",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args) require("luasnip").lsp_expand(args.body) end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-s>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.close()
              vim.lsp.buf.signature_help()
            else
              vim.lsp.buf.signature_help()
            end
          end, { "i" }),
        }),
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "nvim_lsp_signature_help" },
        },
      })

      vim.api.nvim_create_autocmd("InsertCharPre", {
        callback = function()
          if vim.v.char == "(" then
            vim.lsp.buf.signature_help()
          end
        end,
      })
    end,
  },
}
