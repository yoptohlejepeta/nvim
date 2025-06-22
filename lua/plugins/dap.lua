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
        ensure_installed = { "python", "delve" }   -- debugpy and go debugging
      })

      require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python") -- mason debugpy
      require("dap-go").setup()

      local dap = require("dap")
      local dapui = require("dapui")

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end

      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end

      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      dapui.setup({
        icons = { expanded = "▾", collapsed = "▸", current_frame = "→" },
        mappings = {
          expand = { "<CR>", "<2-LeftMouse>" },
          open = "o",
          remove = "d",
          edit = "e",
          repl = "r",
          toggle = "t",
        },
        layouts = {
          {
            elements = {
              { id = "scopes", size = 0.25 },
              "breakpoints",
              "stacks",
              "watches",
            },
            size = 40,
            position = "left",
          },
          {
            elements = {
              "repl",
              "console",
            },
            size = 0.25,
            position = "bottom",
          },
        },
        floating = {
          max_height = nil,
          max_width = nil,
          border = "rounded",
          mappings = {
            close = { "q", "<Esc>" },
          },
        },
      })

      require("nvim-dap-virtual-text").setup({
        enabled = true,
        enabled_commands = true,
        highlight_changed_variables = true,
        highlight_new_as_changed = false,
        show_stop_reason = true,
        commented = false,
        virt_text_pos = 'eol',
        all_frames = false,
        virt_lines = false,
        virt_text_win_col = nil
      })

      vim.keymap.set('n', '<F5>', function() dap.continue() end, { desc = 'Debug: Continue' })
      vim.keymap.set('n', '<F10>', function() dap.step_over() end, { desc = 'Debug: Step Over' })
      vim.keymap.set('n', '<F11>', function() dap.step_into() end, { desc = 'Debug: Step Into' })
      vim.keymap.set('n', '<F12>', function() dap.step_out() end, { desc = 'Debug: Step Out' })
      vim.keymap.set('n', '<Leader>db', function() dap.toggle_breakpoint() end, { desc = 'Debug: Toggle Breakpoint' })
      vim.keymap.set('n', '<Leader>dB', function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end,
        { desc = 'Debug: Set Conditional Breakpoint' })
      vim.keymap.set('n', '<Leader>dl', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end,
        { desc = 'Debug: Set Log Point' })
      vim.keymap.set('n', '<Leader>dr', function() dap.repl.open() end, { desc = 'Debug: Open REPL' })
      vim.keymap.set('n', '<Leader>du', function() dapui.toggle() end, { desc = 'Debug: Toggle UI' })
    end,
  }
}
