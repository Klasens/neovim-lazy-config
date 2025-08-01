-- lua/core/options.lua
-------------------------------------------------
--  Basic options every session needs ----------
-------------------------------------------------
vim.opt.number = true -- show absolute line no. on cursor line
vim.opt.relativenumber = true -- show relative numbers elsewhere
vim.opt.timeoutlen = 200 -- faster mapped sequence timeout
vim.opt.undofile = true -- persistent undo across sessions
vim.opt.termguicolors = true -- true-color support

-- Turn on spell check for md files
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown", "text" },
	callback = function()
		vim.opt_local.spell = true
		vim.opt_local.spelllang = { "en_us" }
	end,
})
