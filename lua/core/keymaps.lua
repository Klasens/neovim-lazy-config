-- lua/core/keymaps.lua
-------------------------------------------------
--  General (non-plugin) keybindings ------------
-------------------------------------------------
vim.g.mapleader = " "

-- Toggle Nvim-Tree (plugin will supply the command later)
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { silent = true })

-- Copy to system clipboard in visual mode
vim.keymap.set("v", "<C-c>", '"+y', { silent = true })

-- Clipboard integration for WSL users
vim.g.clipboard = {
  name = "clip-wsl",
  copy = { ["+"] = "clip.exe", ["*"] = "clip.exe" },
  paste = {
    ["+"] = "powershell.exe -nologo -noprofile -command Get-Clipboard",
    ["*"] = "powershell.exe -nologo -noprofile -command Get-Clipboard",
  },
  cache_enabled = 0,
}

