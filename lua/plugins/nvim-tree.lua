-- lua/plugins/nvim-tree.lua

return {
	--[[
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	--  ⏱  Load immediately at startup so the tree can appear on launch
	lazy = false, -- default is false, but keeping it explicit
	priority = 900, -- load before most other plugins (optional)

	opts = {
		hijack_netrw = true, -- replace netrw
		hijack_directories = {
			enable = true,
			auto_open = true, -- <-- makes `nvim .` open the tree
		},
		actions = {
			open_file = { quit_on_open = true },
		},
	},

	keys = {
		{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" },
	},
	]]
}
