-- lua/keymaps.lua

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true, noremap = true })

-- Copy to system clipboard in visual mode
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })

-- Clipboard integration for WSL
vim.g.clipboard = {
  name = 'clip-wsl',
  copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe',
  },
  paste = {
    ['+'] = 'powershell.exe -nologo -noprofile -command Get-Clipboard',
    ['*'] = 'powershell.exe -nologo -noprofile -command Get-Clipboard',
  },
  cache_enabled = 0,
}

