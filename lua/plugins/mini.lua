return {
	{
		"nvim-mini/mini.move",
		version = false,
		config = function()
			require("mini.move").setup()
		end,
	},
	{
		"nvim-mini/mini.surround",
		version = false,
		config = function()
			require("mini.surround").setup()
		end,
	},
	{
		"nvim-mini/mini.pick",
		version = false,
		config = function()
			local pick = require("mini.pick")
			pick.setup()

			local function find_all_files()
				local cmd = "fd --hidden --no-ignore --type f "
					.. "--exclude .git "
					.. "--exclude node_modules "
					.. "--exclude .venv "
					.. "--exclude venv "
					.. "--exclude __pycache__ "
					.. "--exclude .next "
					.. "--exclude dist "
					.. "--exclude build "
					.. "--exclude .cache "
					.. "--exclude .DS_Store"

				local items = vim.fn.systemlist(cmd)
				pick.builtin.files({ source = { items = items } })
			end

			-- Keybindings
			vim.keymap.set("n", "<leader>ff", find_all_files, { desc = "Find files (all)" })
			vim.keymap.set("n", "<leader>fg", pick.builtin.grep_live, { desc = "Live grep" })
			vim.keymap.set("n", "<leader>fb", pick.builtin.buffers, { desc = "Find buffers" })
			vim.keymap.set("n", "<leader>fh", pick.builtin.help, { desc = "Find help" })
		end,
	},
	{
		"nvim-mini/mini.starter",
		version = false,
		config = function()
			require("mini.starter").setup({
				header = "",
				items = {
					{ name = "Files  ", action = ":lua Snacks.picker.files()", section = "" },
					{ name = "Projects  ", action = ":lua Snacks.dashboard.pick('projects')", section = "" },
					{ name = "Lazy 󰒲 ", action = ":Lazy", section = "" },
					{ name = "Mason  ", action = ":Mason", section = "" },
					{ name = "Quit 󰈆 ", action = ":qa!", section = "" },
					{ name = "New file  ", action = ":ene", section = "---" },
				},
				footer = "",
			})
		end,
	},
}
