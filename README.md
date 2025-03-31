# 🌌 My Neovim Configuration
Welcome to my Neovim configuration! This setup is designed to provide a modern, feature-rich, and highly customizable development environment. Whether you're coding in Lua, Python, Rust, or just exploring the world of Neovim, this configuration has you covered. 🚀

## ✨ Features

### 🖌️ Beautiful UI

Colorschemes: Choose from popular themes like Nightfox, Catppuccin, Gruvbox, TokyoNight, and Rose Pine.
Statusline: Powered by lualine.nvim with LSP and Treesitter integration.
Bufferline: Sleek tab management with bufferline.nvim.

### 🛠️ Productivity Boosters

Telescope: Fuzzy finder for files, buffers, and more.
WhichKey: Discover keybindings with ease.
Todo Comments: Highlight and manage TODOs in your code.
Snippets: Write faster with LuaSnip.

### 🧠 Intelligent Coding

LSP: Full Language Server Protocol support with nvim-lspconfig and mason.nvim.
Treesitter: Advanced syntax highlighting and code navigation.
Git Integration: View changes, blame lines, and navigate hunks with gitsigns.nvim.
Copilot: AI-powered code suggestions from GitHub Copilot.

### 🖇️ File Management

Nvim-Tree: A powerful file explorer.
Yazi: Minimal file manager for quick navigation.

### 🛡️ Code Quality

Conform: Format your code with tools like stylua, ruff, and latexindent.
Comment.nvim: Easily toggle comments in your code.

### 🐚 Terminal Integration

ToggleTerm: Open terminals directly in Neovim.

### 📜 LaTeX Support
VimTeX: Seamless LaTeX editing and compilation.

## 🚀 Getting Started
Prerequisites
Neovim: Version 0.8 or higher.
Git: For cloning plugins.
Node.js: Required for some plugins like Copilot.
Installation
Clone this repository into your Neovim configuration directory:
Open Neovim and let lazy.nvim install the plugins:

## 🔑 Key Features & Shortcuts

General
<leader>w: Save file.
<leader>q: Quit Neovim.
Navigation
<leader>e: Toggle file explorer.
<leader>E: Find current file in explorer.
Telescope
<leader>ff: Find files.
<leader>fg: Live grep.
<leader>fb: Find buffers.
Git
<leader>gn: Next git hunk.
<leader>gp: Previous git hunk.
<leader>gb: Blame line.
LSP
gd: Go to definition.
gb: Go back from definition.
K: Hover documentation.
Snippets
<C-k>: Expand snippet or jump forward.
<C-j>: Jump backward.
Terminal
<C-\>: Toggle terminal.

## 🎨 Themes
Switch between themes effortlessly with Themery:

Open the theme picker: <leader>th.
Available themes include:

Nightfox, Catppuccin, Gruvbox, TokyoNight, Rose Pine, and more!
## 🛠️ Customization
Feel free to tweak the configuration to suit your needs. Key files to explore:

lua/config/options.lua: Editor settings.
lua/config/keymaps.lua: Key mappings.
plugins: Plugin configurations.

🌟🌟🌟
