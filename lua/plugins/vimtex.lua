return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    vim.g.vimtex_view_method = "general"
    vim.g.vimtex_complete_enable = 1
    vim.g.vimtex_quickfix_mode = 0
    vim.g.vimtex_imaps_enabled = 1
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_compiler_latexmk = {
      options = {
        "-shell-escape",
        "-verbose",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode",
      },
    }
  end
}
