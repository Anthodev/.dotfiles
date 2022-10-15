vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

local M = {}

M.options = {
  options = {
    nvimtree = {
      enable_git = 1,
    },
  },
}

M.plugins = {
  ["lukas-reineke/indent-blankline.nvim"] = {
    override_options = {
      space_char_blnkline = " ",
      show_current_context = true,
      show_current_context_start = true,
    },
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["nvim-telescope/telescope.nvim"] = {
    override_options = {
      file_ignore_patterns = {
        "^node_modules/",
        "^vendor/",
        "^var/cache/"
      }
    }
  },

  ["editorconfig/editorconfig-vim"] = {},
  ["github/copilot.vim"] = {},
  ["othree/html5.vim"] = {},
  ["lumiliet/vim-twig"] = {},
  ["catppuccin/nvim"] = {
    config = function()
        vim.g.catppuccin_flavour = "mocha"
    end
  },
}

M.mappings = require "custom.mappings"

M.ui = {
  theme = "catppuccin"
}

return M
