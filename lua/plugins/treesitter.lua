-- lua/plugins/treesitter.lua
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	-- main = "nvim-treesitter.configs", -- <‑‑‑ add this line
	opts = {
		ensure_installed = {
			"lua",
			"vim",
			"bash",
			"javascript",
			"typescript",
			"html",
			"css",
			"json",
			"markdown",
			"markdown_inline", -- <- **needed for render‑markdown**
		},
		highlight = { enable = true },
		indent = { enable = true },
		auto_install = true,
	},
}
