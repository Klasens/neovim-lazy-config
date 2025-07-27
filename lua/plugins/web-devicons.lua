-- lua/plugins/web-devicons.lua
return {
	"nvim-tree/nvim-web-devicons",
	lazy = false, -- ✅ ensure it's eagerly loaded
	config = function()
		require("nvim-web-devicons").setup()
	end,
}
