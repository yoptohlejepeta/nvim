return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    config = function()
      -- function for showing lsp
      -- local function lsp_status()
      --   local clients = vim.lsp.get_active_clients({ bufnr = 0 })
      --   if #clients == 0 then return " No LSP" end
      --   return " " .. table.concat(vim.tbl_map(function(c) return c.name end, clients), ", ")
      -- end

      local function current_function()
        if not pcall(vim.treesitter.get_node) then return "" end
        local ts = vim.treesitter
        local node = ts.get_node()
        while node and node:type() ~= "function" and node:type() ~= "method" do
          node = node:parent()
        end
        return node and "ﬦ " .. (ts.get_node_text(node:child(1), 0) or "") or ""
      end

      require("lualine").setup({
        options = {

          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
          icons_enabled = true,
        },
        sections = {
          lualine_a = {
            { "mode" },
          },
          lualine_b = {
            { "branch", icon = " " },
            { "diff", symbols = { added = " ", modified = " ", removed = " " } },
            { "diagnostics", symbols = { error = " ", warn = " ", info = " ", hint = " " } },
          },
          lualine_c = {
            { "filename", symbols = { modified = "●", readonly = "" } },
            current_function,
          },
          lualine_x = {
            { "filetype", icon = { align = "right" } },
          },
          lualine_y = {
            -- { "progress", icon = "" },
          },
          lualine_z = {
            { "location" },
          },
        },
      })
    end,
  },
}
