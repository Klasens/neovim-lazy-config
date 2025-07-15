-- lua/plugins/pencil.lua
--  ──────────────────────────────────────────────────────────────────────
--  vim-pencil – “Rethinking Vim as a tool for writers”
--  Docs: https://github.com/preservim/vim-pencil
--  ──────────────────────────────────────────────────────────────────────
return {
  "preservim/vim-pencil",

  -- Load the plugin only when opening a prose file.
  ft = { "markdown", "text", "rst", "tex", "asciidoc", "mail" },

  -- Global settings must be defined *before* the plugin is initialised.
  init = function()
    -- Default to soft-wrap mode; pencil will auto-detect hard-break files.
    vim.g["pencil#wrapModeDefault"] = "soft"
  end,

  -- After the plugin is on the runtimepath, initialise it for each buffer.
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "markdown", "text", "rst", "tex", "asciidoc", "mail" },
      callback = function() vim.fn["pencil#init"]() end,
    })
  end,
}

