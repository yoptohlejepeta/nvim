vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false

vim.opt.fillchars:append({ eob = " " })
vim.opt.clipboard = "unnamedplus"

vim.o.winborder = "bold"
vim.opt.termguicolors = true

vim.o.tabline = "%!v:lua.tabline()"

function _G.tabline()
	local s = ""

	for i = 1, vim.fn.tabpagenr("$") do
		local winnr = vim.fn.tabpagewinnr(i)
		local buflist = vim.fn.tabpagebuflist(i)
		local bufnr = buflist[winnr]
		local bufname = vim.fn.bufname(bufnr)

		if bufname == "" then
			bufname = "[No Name]"
		else
			bufname = vim.fn.fnamemodify(bufname, ":t")
		end

		if i == vim.fn.tabpagenr() then
			s = s .. "%#TabLineSel#"
		else
			s = s .. "%#TabLine#"
		end

		s = s .. " " .. i .. " " .. bufname .. " "
	end

	s = s .. "%#TabLineFill#"
	return s
end
