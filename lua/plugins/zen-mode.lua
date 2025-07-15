-- lua/plugins/zen-mode.lua
return {
  "folke/zen-mode.nvim",
  ft = { "markdown", "text" },

  opts = {
    window = {
      backdrop = 0.95,
      width    = 0.6,   -- 60 % of the editor width
      height   = 1,
      options  = {
        wrap           = true,   -- soft-wrap long lines
        linebreak      = true,   -- wrap at word boundaries
        breakindent    = false,  -- keep wrapped lines flush left
        signcolumn     = "no",
        number         = false,
        relativenumber = false,
        foldcolumn     = "0",
        cursorline     = false,
      },
    },
    plugins = {
      options  = { enabled = true, ruler = false, showcmd = false, laststatus = 0 },
      twilight = { enabled = true },
      gitsigns = { enabled = false },
    },
  },

  keys = {
    { "<leader>z", "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
  },
}

