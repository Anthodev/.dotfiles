---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme_toggle = { "catppuccin", "catppuccin" },
  theme = "catppuccin",
  colorscheme = "catppuccin-macchiato",
  hl_override = highlights.override,
  hl_add = highlights.add,

  transparency = false,

  statusline = {
    theme = "vscode_colored",
    separator_style = "round",
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
