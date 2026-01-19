return {
	"saghen/blink.cmp",
	dependencies = {
		{ "onsails/lspkind.nvim", lazy = false },
		{
			"L3MON4D3/LuaSnip",
			dependencies = { "rafamadriz/friendly-snippets" },
			version = "v2.*",
			build = "make install_jsregexp",
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
		},
	},
	version = "1.*",
	opts = {
		snippets = {
			preset = "luasnip",
		},
		keymap = {
			preset = "enter",
		},
		signature = {
			enabled = true,
			trigger = { enabled = true },
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			keyword = {
				range = "full",
			},
			list = {
				selection = {
					auto_insert = false,
				},
			},
			menu = {
				draw = {
					components = {
						kind_icon = {
							text = function(ctx)
								local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
								return kind_icon
							end,
							-- (optional) use highlights from mini.icons
							highlight = function(ctx)
								local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
								return hl
							end,
						},
						kind = {
							-- (optional) use highlights from mini.icons
							highlight = function(ctx)
								local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
								return hl
							end,
						},
					},
				},
			},
		},
		sources = {
			default = { "lazydev", "snippets", "lsp", "path", "buffer", "dadbod" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					score_offset = 100,
				},
				snippets = {
					score_offset = 0,
				},
				dadbod = {
					name = "Dadbod",
					module = "vim_dadbod_completion.blink",
				},
			},
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
