return {
  {
    "nvchad/ui",
    config = function()
      require "nvchad"
    end
  },
  {
    "nvchad/base46",
    lazy = false,
    build = function()
      require("base46").load_all_highlights()
    end,
  },
  {
    "nvchad/volt",
    lazy = false,
  },
  {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    opts = {},
    cmd = { "Typr", "TyprStats" },
  },
  {
    "nvzone/minty",
    cmd = { "Shades", "Huefy" },
  },
  {
    "nvzone/floaterm",
    dependencies = "nvzone/volt",
    opts = {},
    cmd = "FloatermToggle",
  }
}
