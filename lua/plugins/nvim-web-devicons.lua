return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup({
      default = true,
      -- Override icons by filetype or filename
      override = {
        -- By file extension
        toml = {
          icon = "🛠️",
          color = "#4F8CBA",
          name = "Toml",
        },
        tex = {
          icon = "📜",
          color = "#3d6117",
          name = "Tex",
        },
        lua = {
          icon = "🌕",
          color = "#51a0cf",
          name = "Lua",
        },
        py = {
          icon = "🐍",
          color = "#3572A5",
          name = "Python",
        },
        -- jupyter notebook
        ipynb = {
          icon = "🪐",
          color = "#DA5B0C",
          name = "JupyterNotebook",
        },
        go = {
          icon = "🐹",
          color = "#00ADD8",
          name = "Go",
        },
        rs = {
          icon = "🦀",
          color = "#dea584",
          name = "Rust",
        },
        js = {
          icon = "📜",
          color = "#f7df1e",
          name = "JavaScript",
        },
        ts = {
          icon = "🌀",
          color = "#3178c6",
          name = "TypeScript",
        },
        md = {
          icon = "📝",
          color = "#ffffff",
          name = "Markdown",
        },
        png = {
          icon = "🖼️",
          name = "Png"
        },
        pdf = {
          icon = "📕",
          name = "PDF"
        },
        json = {
          icon = "{}",
          color = "#cbcb41",
          name = "Json",
        },
        html = {
          icon = "🌐",
          color = "#e34c26",
          name = "Html",
        },
        css = {
          icon = "🎨",
          color = "#563d7c",
          name = "Css",
        },
        csv = {
          icon = "📊",
          color = "#e67e22",
          name = "Csv",
        },
        ["README.md"] = {
          icon = "📖",
          color = "#ffffff",
          name = "Readme",
        },
        [".gitignore"] = {
          icon = "🚫",
          color = "#f54d27",
          name = "Gitignore",
        },
        ["dockerfile"] = {
          icon = "🐳",
          color = "#2496ed",
          name = "Dockerfile",
        },
        [".gitlab-ci.yml"] = {
          icon = "🦊",
          color = "#e24329",
          name = "Gitlab",
        },
        txt = {
          icon = "📝",
          color = "#89e051",
          name = "Text",
        },
        lock = {
          icon = "🔒",
          color = "#e7b658",
          name = "Lock",
        },
      },
    })
  end,
}
