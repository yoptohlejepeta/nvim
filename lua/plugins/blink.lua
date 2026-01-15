return {
	"saghen/blink.cmp",
	dependencies = {
		"onsails/lspkind.nvim",
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
								if vim.tbl_contains({ "Path" }, ctx.source_name) then
									local mini_icon, _ = require("mini.icons").get_icon(ctx.item.data.type, ctx.label)
									if mini_icon then
										return mini_icon .. ctx.icon_gap
									end
								end

								local icon = require("lspkind").symbolic(ctx.kind, { mode = "symbol" })
								return icon .. ctx.icon_gap
							end,

							-- Optionally, use the highlight groups from mini.icons
							-- You can also add the same function for `kind.highlight` if you want to
							-- keep the highlight groups in sync with the icons.
							highlight = function(ctx)
								if vim.tbl_contains({ "Path" }, ctx.source_name) then
									local mini_icon, mini_hl =
										require("mini.icons").get_icon(ctx.item.data.type, ctx.label)
									if mini_icon then
										return mini_hl
									end
								end
								return ctx.kind_hl
							end,
						},
						kind = {
							-- Optional, use highlights from mini.icons
							highlight = function(ctx)
								if vim.tbl_contains({ "Path" }, ctx.source_name) then
									local mini_icon, mini_hl =
										require("mini.icons").get_icon(ctx.item.data.type, ctx.label)
									if mini_icon then
										return mini_hl
									end
								end
								return ctx.kind_hl
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
