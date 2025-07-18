# Neovim Config

## Plugins

| Purpose          | Plugin                          |
| ---------------- | ------------------------------- |
| Plugin manager   | folke/lazy.nvim                 |
| UI & colors      | diegoulloao/neofusion.nvim      |
| File explorer    | nvim‑tree/nvim-tree.lua         |
| Icons            | nvim‑tree/nvim-web-devicons     |
| Fuzzy finder     | nvim‑telescope/telescope.nvim   |
| Syntax & parsing | nvim‑treesitter/nvim-treesitter |
| Formatter bridge | stevearc/conform.nvim           |
| Focus / writing  | folke/zen-mode.nvim             |

## Installation

```bash
# ripgrep – Telescope file search backend
sudo apt update && sudo apt install -y ripgrep
```

```bash
# Node.js (LTS) + Prettier – format JS/TS/HTML/CSS
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs
npm install -g prettier
```

```bash
# Rust tool‑chain + Stylua – format Lua
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
cargo install stylua
```
