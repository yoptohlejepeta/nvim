return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "helix",
		delay = 500,
		spec = {
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
				"<leader>fd",
				desc = "diagnostics",
				mode = "n",
				callback = function()
					require("snacks").picker.diagnostics()
				end,
			},
			{
				"<leader>fl",
				desc = "diagnostics",
				mode = "n",
				callback = function()
					require("snacks").picker.lines()
				end,
			},
			{
				"<leader>fh",
				desc = "help",
				mode = "n",
				callback = function()
					require("snacks").picker.help()
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
					require("snacks").picker.lsp_symbols({ layout = { preset = "dropdown" } })
				end,
			},
			{
				"<leader>fS",
				desc = "workspace lsp symbols",
				mode = "n",
				callback = function()
					require("snacks").picker.lsp_workspace_symbols({ layout = { preset = "dropdown" } })
				end,
			},
			{
				"<leader>fq",
				desc = "quickfix list",
				mode = "n",
				callback = function()
					require("snacks").picker.qflist()
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
				"<leader>fi",
				function()
					require("snacks").picker.icons()
				end,
				desc = "find icons",
			},
			{
				"<leader>t",
				callback = function()
					require("snacks").terminal.toggle()
				end,
				desc = "toggle terminal",
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
				"grr",
				callback = function()
					require("snacks.picker").lsp_references()
				end,
				nowait = true,
				desc = "references",
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
		},
	},
}
