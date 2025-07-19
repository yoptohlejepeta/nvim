return {
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonUninstall" },
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				automatic_enable = false,
				ensure_installed = {
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
					"templ",
					"jsonls",
				},
				automatic_installation = true,
			})
		end,
	},
}
