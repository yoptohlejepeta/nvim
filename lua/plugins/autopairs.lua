return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true,
        ts_config = {
          lua = { "string", "source" },
          javascript = { "string", "template_string" },
        },
        disable_filetype = { "TelescopePrompt", "minifiles" },

        enable_check_bracket_line = true,
        ignored_next_char = "[%w%.]",

        fast_wrap = {
          map = "<M-e>",
          chars = { "{", "[", "(", '"', "'" },
          pattern = [=[[%'%"%>%]%)%}%,]]=],
          end_key = "$",
          keys = "qwertyuiopzxcvbnmasdfghjkl",
          check_comma = true,
          highlight = "Search",
          highlight_grey = "Comment"
        },
      })

      vim.api.nvim_create_autocmd("InsertEnter", {
        callback = function()
          local has_blink, blink = pcall(require, "blink.cmp")
        end,
        once = true,
      })
    end
  },
}
