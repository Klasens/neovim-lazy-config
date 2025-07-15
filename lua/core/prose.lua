-- lua/core/prose.lua
local M = {}

local prose_ft = { "markdown", "text", "rst", "tex", "asciidoc", "mail" }

-- helper: compute a wrapmargin that gives ~80-column text
local function compute_margin(win)
  local WIN = vim.api.nvim_win_get_width(win)
  local target = 140 
  local margin = WIN > target and (WIN - target) or 0
  return margin              -- 0 if the window is already narrow
end

function M.setup()
  vim.api.nvim_create_autocmd("FileType", {
    pattern  = prose_ft,
    callback = function(args)
      local o = vim.opt_local

      -- basic “prose view”
      o.wrap, o.linebreak = true, true
      o.breakindent       = true      -- indent wrapped screen lines
      o.spell             = true
      o.number, o.relativenumber = false, false
      o.signcolumn        = "no"

      -- dynamic soft margin for an ~80-char text column
      o.wrapmargin = compute_margin(args.buf and 0 or 0)

      -- hard-wrap disabled (leave lines long in file)
      o.textwidth   = 0
      o.colorcolumn = ""
    end,
  })

  -- re-compute margin if you resize the window
  vim.api.nvim_create_autocmd("VimResized", {
    callback = function()
      if vim.tbl_contains(prose_ft, vim.bo.filetype) then
        vim.opt_local.wrapmargin = compute_margin(0)
      end
    end,
  })
end

return M

