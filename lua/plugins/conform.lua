-- lua/plugins/conform.lua
return {
	"stevearc/conform.nvim",
	-- load on first buffer read / new file,
	-- not on the *first* save
	event = { "BufReadPre", "BufNewFile" },

	-- OR simply:  lazy = false,

	opts = {
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			json = { "prettier" }, -- or { "prettierd", "prettier" },
			lua = { "stylua" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			markdown = { "prettier" },
			sh = { "prettier" },
		},
	},
}
