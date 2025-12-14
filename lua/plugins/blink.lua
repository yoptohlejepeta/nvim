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
