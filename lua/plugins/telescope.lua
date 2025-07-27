-- lua/plugins/telescope.lua

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	lazy = false,

	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},

	keys = {
		{
			"<C-p>",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Find files",
		},
		{
			"<leader>p",
			function()
				require("telescope.builtin").git_files()
			end,
			desc = "Git files",
		},
		{
			"<leader>g",
			function()
				require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
			end,
			desc = "Grep input",
		},
	},

	opts = function()
		local actions = require("telescope.actions")

		return {
			defaults = {
				prompt_prefix = "🔍 ",
				selection_caret = " ",
				path_display = { "smart" },
				layout_strategy = "horizontal",
				layout_config = { width = 0.9 },
				mappings = {
					i = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
						["jk"] = actions.close,
					},
				},
			},
			pickers = {
				find_files = {
					previewer = true,
					find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
				},
			},
		}
	end,

	config = function(_, opts)
		require("telescope").setup(opts)
	end,
}
