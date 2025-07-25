-- lua/core/keymaps.lua
-------------------------------------------------
--  General (non-plugin) keybindings ------------
-------------------------------------------------
vim.g.mapleader = " "

-- Toggle Nvim-Tree (plugin will supply the command later)
vim.keymap.set("n", "<leader>e", "<cmd>Ex<cr>", { silent = true })

-- Copy Mappings
vim.keymap.set("v", "<C-c>", '"+y', { silent = true })
vim.keymap.set("n", "<C-l>", 'ggVG"+y')

-- Clipboard integration for WSL users
--[[
vim.g.clipboard = {
	name = "clip-wsl",
	copy = { ["+"] = "clip.exe", ["*"] = "clip.exe" },
	paste = {
		["+"] = "powershell.exe -nologo -noprofile -command Get-Clipboard",
		["*"] = "powershell.exe -nologo -noprofile -command Get-Clipboard",
	},
	cache_enabled = 0,
}
]]

-- Clear search highlights
vim.keymap.set("n", "<leader><space>", ":nohlsearch<CR>", { noremap = true, silent = true })

-- Scrolling and window management
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<leader>w", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>i", "<C-w>w", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>v", ":vsp<CR><C-w>l")
