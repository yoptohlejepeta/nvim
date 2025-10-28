return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "helix",
		delay = 500,
		spec = {
			{ "<leader>w", hidden = true },
			{ "<leader>q", hidden = true },
			{ "<leader>f", group = "find", mode = "n", icon = { icon = " ", color = "white" } },
			{
				"<leader>ff",
				desc = "files",
				mode = "n",
				callback = function()
					require("snacks").picker.files()
				end,
			},
			{
				"<leader>fg",
				desc = "live grep",
				mode = "n",
				callback = function()
					require("snacks").picker.grep({ hidden = true })
				end,
			},
			{
				"<leader><leader>",
				desc = "buffers",
				mode = "n",
				callback = function()
					require("snacks").picker.buffers()
				end,
			},
			{
				"<leader>ft",
				desc = "todos",
				mode = "n",
				callback = function()
					require("snacks").picker.todo_comments()
				end,
			},
			{
				"<leader>fs",
				desc = "lsp symbols",
				mode = "n",
				callback = function()
					require("snacks").picker.lsp_symbols({ layout = { preset = "right" } })
				end,
			},
			{
				"<leader>fS",
				desc = "workspace lsp symbols",
				mode = "n",
				callback = function()
					require("snacks").picker.lsp_workspace_symbols({ layout = { preset = "right" } })
				end,
			},
			{
				"<leader>x",
				desc = "delete current bufffer",
				mode = "n",
				callback = function()
					require("snacks").bufdelete.delete()
				end,
			},
			{
				"<leader>X",
				desc = "delete all other bufers",
				mode = "n",
				callback = function()
					require("snacks").bufdelete.other()
				end,
			},
			{ "<leader>g", group = "git", mode = "n" },
			{
				"<leader>go",
				mode = "n",
				callback = function()
					require("snacks").gitbrowse.open()
				end,
				desc = "open git repo",
				icon = { icon = " ", color = "white" },
			},
			{
				"<leader>gc",
				callback = function()
					require("snacks").picker.git_branches()
				end,
				desc = "git branches",
			},
			{
				"<leader>gl",
				mode = "n",
				desc = "lazygit",
				callback = function()
					require("snacks").lazygit.open()
				end,
			},
			{ "<leader>d", group = "debug", mode = "n" },
			{ "<localleader>l", group = "latex", mode = "n", icon = { icon = " ", color = "green" } },
			{
				"<localleader>t",
				desc = "typst live preview",
				mode = "n",
				icon = { icon = " ", color = "brown" },
			},
			{
				"<leader>fi",
				function()
					require("snacks").picker.icons()
				end,
				desc = "find icons",
			},
			{
				"<C-\\>",
				callback = function()
					require("snacks").terminal.toggle()
				end,
				desc = "toggle terminal",
			},
			{
				"<C-|>",
				callback = function()
					require("snacks").terminal.open()
				end,
				desc = "temporary terminal",
			},
			{
				"gd",
				desc = "goto definition",
				mode = "n",
				callback = function()
					require("snacks").picker.lsp_definitions()
				end,
			},
			{
				"<localleader>i",
				callback = function()
					require("snacks").image.hover()
				end,
				desc = "image preview",
				icon = { icon = " ", color = "purple" },
			},
			{
				"<leader>ld",
				callback = function()
					require("snacks").terminal("lazydocker")
				end,
				desc = "lazydocker",
				icon = { icon = " ", color = "azure" },
			},
			{
				"<leader>y",
				callback = function()
					require("snacks").terminal("yazi")
				end,
				desc = "yazi",
				icon = { icon = "󰇥 ", color = "yellow" },
			},
			{ "<leader>s", group = "iron send", mode = "n", icon = " " },
			{ "<leader>r", group = "iron repl", mode = "n", icon = " " },
			{ "<leader>m", group = "iron mark", mode = "n", icon = "󰙒 " },
			{ "<leader>a", group = "sidekick", mode = "n", icon = " " },
		},
	},
}
