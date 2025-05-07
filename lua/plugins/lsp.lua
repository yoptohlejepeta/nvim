return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "L3MON4D3/LuaSnip",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "chomosuke/typst-preview.nvim",
    "kaarmu/typst.vim",
  },
  config = function()
    vim.lsp.inlay_hint.enable(true)

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local lspconfig = require("lspconfig")

    local servers = {
      "rust_analyzer",
      "gopls",
      "julials",
      "lua_ls",
      "pyright",
      -- "basedpyright",
      "ruff",
      "texlab",
      "html",
      "cssls",
      "tinymist",
      "zls",
      "dockerls",
      "docker_compose_language_service" -- FIX:
    }

    for _, server in ipairs(servers) do
      local opts = { capabilities = capabilities }

      if server == "lua_ls" then
        opts.settings = {
          Lua = {
            diagnostics = { globals = { "vim" , "Snacks"} },
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
      -- elseif server == "basedpyright" then
      --   opts.settings = {
      --     basedpyright = {
      --       analysis = {
      --         inlayHints = {
      --           variableTypes = false,
      --         },
      --         diagnosticSeverityOverrides = {
      --           reportAny = false,
      --           reportUnknownVariableType = false
      --         }
      --       }
      --     }
      --   }
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

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
    vim.keymap.set("n", "gb", "<C-o>", { desc = "Go Back from Definition" })
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to Declaration" })
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show Hover Documentation" })
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
  end,
}
