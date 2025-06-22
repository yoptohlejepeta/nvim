return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "L3MON4D3/LuaSnip",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "saghen/blink.cmp",
  },
  config = function()
    vim.lsp.inlay_hint.enable(true)

    local capabilities = require('blink.cmp').get_lsp_capabilities()
    local lspconfig = require("lspconfig")

    local servers = {
      "pyright",
      "gopls",
      "julials",
      "lua_ls",
      "ruff",
      "texlab",
      "html",
      "cssls",
      "tinymist",
      "zls",
      "dockerls",
      "docker_compose_language_service",
      "marksman",
      "yamlls"
    }

    for _, server in ipairs(servers) do
      local opts = { capabilities = capabilities }

      if server == "lua_ls" then
        opts.settings = {
          Lua = {
            diagnostics = { globals = { "vim", "snacks" } },
          },
        }
      elseif server == "gopls" then
        opts.settings = {
          gopls = {
            ["ui.inlayhints.hints"] = {
              compositeLiteralFields = true,
              constantValues = true,
              parameterNames = true
            }
          }
        }
      elseif server == "tinymist" then
        opts = {
          capabilities = capabilities,
          offset_encoding = "utf-8",
          lint = {
            enabled = true,
            when = "onType"
          }
        }
        opts.settings = {
          exportPdf = "onType",
          formatterMode = "typstyle",
          semanticTokens = "disable"
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

    vim.keymap.set("n", "gb", "<C-o>", { desc = "Go Back from Definition" })
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to Declaration" })
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
  end,
}
