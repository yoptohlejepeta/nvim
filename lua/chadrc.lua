local M = {}

M.base46 = {
  enabled = true,
  theme = "kanagawa-dragon",
}

M.ui = {
  statusline = {
    enabled = true,
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    -- separator_style = "round",
  },
  tabufline = {
    order = { "buffers", "tabs" },
    enabled = false
  },
}


M.colorify = {
  enabled = true
}

return M
