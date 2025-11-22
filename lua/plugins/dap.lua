return {
	{
		"mfussenegger/nvim-dap",
		event = "VeryLazy",
		dependencies = {
			"mfussenegger/nvim-dap-python",
			"leoluz/nvim-dap-go",
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
			"theHamsta/nvim-dap-virtual-text",
			"jay-babu/mason-nvim-dap.nvim",
		},
		config = function()
			require("mason-nvim-dap").setup({
				ensure_installed = { "python", "delve" }, -- debugpy and go debugging
			})

			require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python") -- mason debugpy
			require("dap-go").setup()

			local dap = require("dap")
			local dapui = require("dapui")

			dap.configurations.python = {
				{
					type = "python",
					request = "launch",
					name = "Launch file",
					program = "${file}",
					pythonPath = function()
						return "/usr/bin/python3"
					end,
				},
				{
					type = "python",
					request = "launch",
					name = "Run with uv",
					program = "${file}",
					pythonPath = function()
						return vim.fn.system("uv python"):gsub("\n", "")
					end,
				},
				{
					type = "python",
					request = "launch",
					name = "Run with poetry",
					program = "${file}",
					pythonPath = function()
						return vim.fn.system("poetry env info -p"):gsub("\n", "") .. "/bin/python"
					end,
				},
				{
					type = "python",
					request = "launch",
					name = "Run project with uv",
					module = "src",
					cwd = "${workspaceFolder}",
					pythonPath = function()
						return "${workspaceFolder}/.venv/bin/python"
					end,
					env = { PYTHONPATH = "${workspaceFolder}" },
				},
				{
					type = "python",
					request = "launch",
					name = "Run project with poetry",
					module = "src",
					cwd = "${workspaceFolder}",
					pythonPath = function()
						return vim.fn.system("poetry env info -p"):gsub("\n", "") .. "/bin/python"
					end,
					env = { PYTHONPATH = "${workspaceFolder}" },
				},
			}

			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end

			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end

			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end

			dapui.setup()

			require("nvim-dap-virtual-text").setup()

			vim.keymap.set("n", "<F5>", function()
				dap.continue()
			end, { desc = "Debug: Continue" })
			vim.keymap.set("n", "<Leader>db", function()
				dap.toggle_breakpoint()
			end, { desc = "Debug: Toggle Breakpoint" })
			vim.keymap.set("n", "<Leader>du", function()
				dapui.toggle()
			end, { desc = "Debug: Toggle UI" })
		end,
	},
}
