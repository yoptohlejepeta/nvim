return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets', "onsails/lspkind.nvim" },
  version = '1.*',
  opts = {
    keymap = {
      preset = "enter",
      ['<C-s>'] = { 'show_signature', 'hide_signature', 'fallback' },
    },
    appearance = {
      nerd_font_variant = 'mono'
    },
    signature = {
      enabled = true,
      window = { border = "rounded", max_height = 50 }
    },
    completion = {
      documentation = { window = { border = 'rounded' } },
      list = {
        selection = {
          auto_insert = false
        }
      },
      menu = {
        border = "rounded",
        -- draw = {
        --   components = {
        --     kind_icon = {
        --       text = function(ctx)
        --         local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
        --         return kind_icon
        --       end,
        --       -- (optional) use highlights from mini.icons
        --       highlight = function(ctx)
        --         local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
        --         return hl
        --       end,
        --     },
        --     kind = {
        --       -- (optional) use highlights from mini.icons
        --       highlight = function(ctx)
        --         local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
        --         return hl
        --       end,
        --     }
        --   }
        -- }

        draw = {
          components = {
            kind_icon = {
              text = function(ctx)
                local icon = ctx.kind_icon
                if vim.tbl_contains({ "Path" }, ctx.source_name) then
                  local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
                  if dev_icon then
                    icon = dev_icon
                  end
                else
                  icon = require("lspkind").symbolic(ctx.kind, {
                    mode = "symbol",
                  })
                end

                return icon .. ctx.icon_gap
              end,

              -- Optionally, use the highlight groups from nvim-web-devicons
              -- You can also add the same function for `kind.highlight` if you want to
              -- keep the highlight groups in sync with the icons.
              highlight = function(ctx)
                local hl = ctx.kind_hl
                if vim.tbl_contains({ "Path" }, ctx.source_name) then
                  local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
                  if dev_icon then
                    hl = dev_hl
                  end
                end
                return hl
              end,
            }
          }
        }
      }
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer', "dadbod" },
      providers = {
        dadbod = {
          name = "Dadbod",
          module = "vim_dadbod_completion.blink"
        }
      }
    },

    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
