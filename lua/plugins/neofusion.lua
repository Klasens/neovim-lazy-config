-- lua/plugins/neofusion.lua
-- Neofusion colorscheme configuration for lazy.nvim

return {
	"diegoulloao/neofusion.nvim",

	-- load on start‑up and before anything else that might depend on colours
	lazy = false,
	priority = 1000,

	---@type neofusion.Config
	opts = {
		terminal_colors = true,
		undercurl = true,
		underline = true,
		bold = true,
		italic = {
			strings = true,
			emphasis = true,
			comments = true,
			operators = false,
			folds = true,
		},
		strikethrough = true,
		invert_selection = false,
		invert_signs = false,
		invert_tabline = false,
		invert_intend_guides = false,
		inverse = true, -- invert background for search, diffs, etc.
		palette_overrides = {}, -- customise individual colours here
		overrides = {
			Comment = { fg = "#8ec07c", italic = true },
			["@comment"] = { fg = "#8ec07c", italic = true },
			["@lsp.type.comment"] = { fg = "#8ec07c", italic = true },
		},
		dim_inactive = false,
		transparent_mode = true,
	},

	-- lazy.nvim passes `opts` as first argument
	config = function(_, opts)
		-- `setup()` MUST be called *before* setting the colourscheme
		require("neofusion").setup(opts)

		vim.o.background = "dark" -- or "light" if you prefer
		vim.cmd.colorscheme("neofusion")
	end,
}
