local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("go", {
  s("iferr", fmt([[
if err != nil {{
    {}
}}
]], {
    c(1, {
      t("return err"),
      fmt('return fmt.Errorf("{}: %w", err)', { i(1, "context") }),
    }),
  })),
})
