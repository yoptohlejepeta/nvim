return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    vim.g.vimtex_view_method = "general"
    vim.g.vimtex_compiler_method = "latexmk" -- Set compiler to latexmk
    vim.g.vimtex_compiler_latexmk = {
      options = {
        "-shell-escape", -- Enable shell escape
        "-verbose",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode",
      },
    }
  end
}
