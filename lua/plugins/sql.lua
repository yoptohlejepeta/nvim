return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod',                     lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_winwidth = 30
    vim.g.db_ui_execute_on_save = 0

    local wk = require("which-key")

    wk.add {
      { "<localleader>d", "<cmd>DBUIToggle<CR>", desc = "db view", icon = { icon = " ", color = "white" } },
    }
  end,
}
