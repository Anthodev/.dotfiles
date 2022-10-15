local M = {}

M.disabled = {
  n = {
    ["gd"] = "",
    ["gr"] = "",
  },
}

M.lspoveride = {
  n = {
    ["<leader>gd"] = { "<cmd>Telescope lsp_definitions<CR>", "definitions" },
    ["<leader>gr"] = { "<cmd>Telescope lsp_references<CR>", "references" },
  },
}

return M
