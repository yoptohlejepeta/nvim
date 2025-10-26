return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "helix",
		delay = 500,
		win = {
			border = "solid",
		},
		spec = {
			{ "<leader>w", hidden = true },
			{ "<leader>q", hidden = true },
			{ "<leader>f", group = "find", mode = "n", icon = { icon = " ", color = "white" } },
			{
				"<leader>ff",
				desc = "files",
				mode = "n",
				callback = ":Pick files<cr>",
			},
			{
				"<leader>fg",
				desc = "live grep",
				mode = "n",
				callback = ":Pick grep_live<cr>",
			},
			{
				"<leader><leader>",
				desc = "buffers",
				mode = "n",
				callback = ":Pick buffers<cr>",
			},
			-- {
			-- 	"<leader>fl",
			-- 	desc = "lines",
			-- 	mode = "n",
			-- 	callback = function()
			-- 		require("snacks.picker").lines()
			-- 	end,
			-- },
			{
				"<leader>ft",
				desc = "todos",
				mode = "n",
				callback = ":Trouble todo<cr>",
			},
			-- {
			-- 	"<leader>x",
			-- 	desc = "delete current bufffer",
			-- 	mode = "n",
			-- 	callback = function()
			-- 		require("snacks").bufdelete.delete()
			-- 	end,
			-- },
			-- {
			-- 	"<leader>X",
			-- 	desc = "delete all other bufers",
			-- 	mode = "n",
			-- 	callback = function()
			-- 		require("snacks").bufdelete.other()
			-- 	end,
			-- },
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
			-- {
			-- 	"<leader>e",
			-- 	desc = "Toggle file explorer",
			-- 	mode = "n",
			-- 	callback = function()
			-- 		require("snacks").explorer()
			-- 	end,
			-- },
			-- {
			-- 	"<leader>E",
			-- 	desc = "Find current file in explorer",
			-- 	mode = "n",
			-- 	callback = function()
			-- 		require("snacks").picker.explorer({ follow_file = true })
			-- 	end,
			-- },
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
				group = "typst",
				desc = "typst preview",
				mode = "n",
				icon = { icon = " ", color = "brown" },
			},
			{ "<localleader>tl", "<cmd>TypstPreviewToggle<CR>", desc = "live preview (toggle)", mode = "n" },
			{ "<localleader>tp", "<cmd>TypstWatch<CR>", desc = "preview pdf", mode = "n" },
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
			{ "]w", callback = "<C-w>l", mode = "n", desc = "window right" },
			{ "[w", callback = "<C-w>h", mode = "n", desc = "window left" },
		},
	},
}
