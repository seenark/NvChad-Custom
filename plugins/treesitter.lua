local M = {}

M.treesitter = {
  autotag = {
    enable = true,
  },
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "typescript",
    "rust",
    "toml",
    "yaml",
    "json",
    "jsonc",
  },
  auto_install = true,
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}

return M
