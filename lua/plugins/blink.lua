return {
  "saghen/blink.cmp",
  dependencies = {
    "L3MON4D3/LuaSnip",
    "onsails/lspkind.nvim",
    "echasnovski/mini.icons"
  },
  build = "cargo build --release",
  opts = function(_, opts)
    opts.enabled = function()
      local ft = vim.bo.filetype
      return not (ft == "TelescopePrompt" or ft == "minifiles")
    end
    opts.sources = {
      default = { "lsp", "path", "snippets", "buffer" },
      per_filetype = {
        sql = { 'snippets', 'dadbod', 'buffer' },
        mysql = { 'snippets', 'dadbod', 'buffer' },
      },
      providers = {
        dadbod = {
          name = "Dadbod",
          module = "vim_dadbod_completion.blink"
        },
        lsp = {
          name = "LSP",
          module = "blink.cmp.sources.lsp",
          score_offset = 90,
        },
        path = {
          name = "Path",
          module = "blink.cmp.sources.path",
          fallbacks = { "snippets", "buffer" },
          score_offset = 25,
          opts = {
            show_hidden_files_by_default = true,
          },
        },
        buffer = {
          name = "Buffer",
          module = "blink.cmp.sources.buffer",
          min_keyword_length = 2,
          score_offset = 15,
        },
        snippets = {
          name = "Snippets",
          module = "blink.cmp.sources.snippets",
          min_keyword_length = 2,
          score_offset = 85,
        },
      },
    }
    opts.keymap = {
      ["<Tab>"] = { "snippet_forward", "select_next", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
      ["<C-Space>"] = { "show" },
      ["<CR>"] = { "accept", "fallback" },
      ["<C-e>"] = { "hide", "fallback" },
      ["<C-s>"] = {
        function()
          local ok, _ = pcall(vim.lsp.buf.signature_help)
          if not ok then
            vim.notify("LSP signature help not available", vim.log.levels.WARN)
          end
        end,
        modes = { "i" },
      },

      ["<C-n>"] = { "select_next", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },

      ["<C-d>"] = { "scroll_documentation_down", "fallback" },
      ["<C-u>"] = { "scroll_documentation_up", "fallback" },
      ["K"] = { "show_documentation", "fallback" }
    }

    opts.signature = { window = { border = "single" } }
    opts.completion = {
      documentation = {
        auto_show = true,
        window = {
          border = "rounded",
        },
      },
      signature = {
        enabled = true,
        trigger = {
          -- Show the signature help automatically
          enabled = true,
          -- Show the signature help window after typing any of alphanumerics, `-` or `_`
          show_on_keyword = true,
          blocked_trigger_characters = {},
          blocked_retrigger_characters = {},
          -- Show the signature help window after typing a trigger character
          show_on_trigger_character = true,
          -- Show the signature help window when entering insert mode
          show_on_insert = true,
          -- Show the signature help window when the cursor comes after a trigger character when entering insert mode
          show_on_insert_on_trigger_character = true,
        },
      },
      menu = {
        border = "rounded",
        w = {
          components = {
            kind_icon = {
              text = function(ctx)
                local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
                return kind_icon
              end,
              -- (optional) use highlights from mini.icons
              highlight = function(ctx)
                local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
                return hl
              end,
            },
            kind = {
              -- (optional) use highlights from mini.icons
              highlight = function(ctx)
                local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
                return hl
              end,
            }
          }
        }
      },
    }

    opts.snippets = {
      preset = "luasnip",
    }

    return opts
  end,
}
