-- ~/.config/nvim/init.lua
-------------------------------------------------
--  Bootstrap lazy.nvim -------------------------
-------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-------------------------------------------------
--  Load options / keymaps early  (optional) ----
-------------------------------------------------
require("core.options") -- basic vim.opt settings
require("core.keymaps") -- mappings that do NOT need plugins

-------------------------------------------------
--  Tell lazy.nvim to import every spec it finds
--  under lua/plugins/*.lua
-------------------------------------------------
require("lazy").setup({ { import = "plugins" } }, {
	change_detection = { notify = false }, -- example of global opts
})
