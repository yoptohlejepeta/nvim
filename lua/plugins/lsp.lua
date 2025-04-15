return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "chomosuke/typst-preview.nvim",
    "kaarmu/typst.vim",
  },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspconfig = require("lspconfig")
    local servers = {
      "rust_analyzer",
      "gopls",
      "julials",
      "lua_ls",
      "pyright",
      "ruff",
      "texlab",
      "html",
      "cssls",
      "tinymist",
    }

    for _, server in ipairs(servers) do
      local opts = { capabilities = capabilities }
      if server == "lua_ls" then
        opts.settings = {
          Lua = { diagnostics = { globals = { "vim" } } },
        }
      elseif server == "pyright" then
        opts.settings = {
          python = {
            analysis = { typeCheckingMode = "basic", diagnosticMode = "workspace" },
            pythonPath = vim.fn.getcwd() .. "/.venv/bin/python",
          },
        }
      elseif server == "tinymist" then
        opts = { offset_encoding = "utf-8" }
        opts.settings = {
          exportPdf = "onType",
          formatterMode = "typstyle",
        }
      end
      lspconfig[server].setup(opts)
    end

    vim.diagnostic.config({
      virtual_text = true,
      signs = false,
      update_in_insert = true,
      severity_sort = true,
    })

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
      }),
      sources = { { name = "nvim_lsp" }, { name = "luasnip" } },
    })

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
    vim.keymap.set("n", "gb", "<C-o>", { desc = "Go Back from Definition" })
  end,
}
