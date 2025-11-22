vim.api.nvim_create_autocmd("FileType", {
	pattern = "c",
	callback = function()
		vim.opt_local.makeprg = "gcc -o %< %"
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.opt_local.makeprg = "pyright ."
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "elm",
	callback = function()
		vim.opt_local.makeprg = "elm make %"
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "go",
	callback = function()
		vim.opt_local.makeprg = "go build %"
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "typst",
	callback = function()
		vim.opt_local.makeprg = "typst compile %"
	end,
})
