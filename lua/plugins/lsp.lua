return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"L3MON4D3/LuaSnip",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"saghen/blink.cmp",
	},
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		vim.lsp.inlay_hint.enable()

		local servers = {
			"just",
			"clangd",
			"hls",
			"pyright",
			"gopls",
			"rust_analyzer",
			"julials",
			"lua_ls",
			"ruff",
			"texlab",
			"html",
			"cssls",
			"tinymist",
			"dockerls",
			"docker_compose_language_service",
			"marksman",
			"yamlls",
			"sqls",
			"postgres_lsp",
			"templ",
			"jsonls",
			"taplo",
			"elmls",
			"zls",
			"bashls",
			"r_language_server",
			"nil_ls",
		}

		for _, server in ipairs(servers) do
			local opts = { capabilities = capabilities }

			if server == "lua_ls" then
				opts.settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
					},
				}
			elseif server == "gopls" then
				opts.settings = {
					gopls = {
						["ui.inlayhints.hints"] = {
							compositeLiteralFields = true,
							constantValues = true,
							parameterNames = true,
						},
					},
				}
			elseif server == "tinymist" then
				opts.settings = {
					exportPdf = "onType",
					formatterMode = "typstyle",
				}
			elseif server == "rust_analyzer" then
				opts.settings = {
					["rust-analyzer"] = {
						cargo = {
							allFeatures = true,
						},
						procMacro = {
							enable = true,
						},
					},
				}
			end

			vim.lsp.config[server] = opts
			vim.lsp.enable(server)
		end

		---@type vim.diagnostic.Opts
		local cfg = {
			virtual_text = false,
			virtual_lines = true,
			update_in_insert = false,
			signs = false,
			severity_sort = true,
			---@type vim.diagnostic.Opts.Jump
			jump = {
				float = true,
			},
		}

		vim.diagnostic.config(cfg)

		vim.keymap.set("n", "gb", "<C-o>", { desc = "Go Back from Definition" })
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to Declaration" })
	end,
}
