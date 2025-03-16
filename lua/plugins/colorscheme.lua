return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          transparent = false,
          styles = { comments = "italic" },
        },
      })

      vim.cmd([[colorscheme nightfox]])

      local function toggle_theme()
        local current = vim.api.nvim_get_option("background")
        if current == "dark" then
          vim.cmd("set background=light")
          vim.cmd("colorscheme dayfox")
          print("Switched to Dayfox (light)")
        else
          vim.cmd("set background=dark")
          vim.cmd("colorscheme nightfox")
          print("Switched to Nightfox (dark)")
        end
      end

      vim.keymap.set("n", "<leader>tc", toggle_theme, { desc = "Toggle theme (light/dark)" })
    end,
  },
}
