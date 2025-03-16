return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    config = function()
      local function lsp_status()
        local clients = vim.lsp.get_active_clients({ bufnr = 0 })
        if #clients == 0 then return " No LSP" end
        return " " .. table.concat(vim.tbl_map(function(c) return c.name end, clients), ", ")
      end

      local function current_function()
        if not pcall(vim.treesitter.get_node) then return "" end
        local ts = vim.treesitter
        local node = ts.get_node()
        while node and node:type() ~= "function" and node:type() ~= "method" do
          node = node:parent()
        end
        return node and "ﬦ " .. (ts.get_node_text(node:child(1), 0) or "") or ""
      end

      local nightfox_colors = {
        dayfox = {
          fg0 = "#543A48", -- Default foreground
          blue = "#2A6B9C", -- Subtle blue
          green = "#618062", -- Muted green
          black = "#000000", -- True black for a/z
        },
        nightfox = {
          fg0 = "#CDCCC6", -- Default foreground
          blue = "#5AB0F6", -- Soft blue
          green = "#9ECD9E", -- Soft green
          black = "#000000", -- True black for a/z
        },
      }

      local function get_nightfox_theme()
        local bg = vim.o.background
        local colors = nightfox_colors[bg == "light" and "dayfox" or "nightfox"]
        return {
          normal = {
            a = { bg = colors.blue, fg = colors.black, gui = "bold" }, -- Blue with black text
            b = { fg = colors.fg0 },
            c = { fg = colors.fg0 },
            x = { fg = colors.fg0 },
            y = { fg = colors.fg0 },
            z = { bg = colors.green, fg = colors.black }, -- Green with black text
          },
        }
      end

      require("lualine").setup({
        options = {
          theme = get_nightfox_theme,
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
          icons_enabled = true,
        },
        sections = {
          lualine_a = {
            { "mode" },
          },
          lualine_b = {
            { "branch", icon = "" },
            { "diff", symbols = { added = " ", modified = " ", removed = " " } },
            { "diagnostics", symbols = { error = " ", warn = " ", info = " ", hint = " " } },
          },
          lualine_c = {
            { "filename", symbols = { modified = "●", readonly = "" } },
            current_function,
          },
          lualine_x = {
            lsp_status,
            { "filetype", icon = { align = "right" } },
          },
          lualine_y = {
            { "progress", icon = "" },
          },
          lualine_z = {
            { "location" },
          },
        },
      })
    end,
  },
}
