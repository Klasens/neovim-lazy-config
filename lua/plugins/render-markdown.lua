-- filename: lua/plugins/render-markdown.lua
return {
	"MeanderingProgrammer/render-markdown.nvim",
	ft = { "markdown" },
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},

	---@module 'render-markdown'
	---@type  render.md.UserConfig
	opts = {
		enabled = true,
		file_types = { "markdown" },

		heading = {
			enabled = true,
			position = "overlay",
			-- NOTE: use `icons`, not `symbols`
			icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
			backgrounds = {
				"CursorLine",
				"CursorLine",
				"CursorLine",
				"CursorLine",
				"CursorLine",
				"CursorLine",
			},
			foregrounds = { "Title", "Function", "Statement", "Keyword", "Constant", "Type" },
			border = false,
		},

		code = {
			enabled = true,
			style = "normal",
			highlight = "NormalFloat",
			highlight_border = "Comment",
		},

		bullet = {
			icons = { "•", "◦", "‣", "▪" },
			highlight = "Comment",
		},

		quote = {
			icon = "│",
			highlight = { "Comment", "Comment", "Comment" },
		},

		checkbox = {
			checked = { icon = "✓", highlight = "String" },
			unchecked = { icon = "☐", highlight = "Comment" },
		},

		callout = {
			note = { highlight = "Comment" },
			tip = { highlight = "String" },
			warning = { highlight = "DiagnosticWarn" },
			danger = { highlight = "DiagnosticError" },
		},

		dash = {
			icon = "―",
			highlight = "LineNr",
		},
	},
}
