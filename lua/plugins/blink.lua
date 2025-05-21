return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
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
        draw = {
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
