-- lua/plugins/telescope.lua

return {
  "nvim-telescope/telescope.nvim",
  tag  = "0.1.8",
  lazy = false,

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },

  keys = {
    { "<C-p>", function() require("telescope.builtin").find_files() end, desc = "Find files" },
    { "<C-g>", function() require("telescope.builtin").live_grep()   end, desc = "Live grep" },
    { "<leader>fb", function() require("telescope.builtin").buffers()     end, desc = "Buffers"   },
  },

  opts = function()
    local actions = require("telescope.actions")

    return {
      defaults = {
        prompt_prefix   = "🔍 ",
        selection_caret = " ",
        path_display    = { "smart" },
        mappings        = {
          i = { ["<C-h>"] = actions.which_key, ["<C-p>"] = actions.close },
          n = { ["<C-p>"] = actions.close },
        },
      },
      pickers = {
        find_files = {
          theme        = "ivy",
          previewer    = false,
          find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
        },
      },
    }
  end,

  config = function(_, opts)
    require("telescope").setup(opts)
  end,
}

