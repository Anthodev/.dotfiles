return {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "stylua",
                "shellcheck",
                "shfmt",
                "intelephense",
                "phpstan",
                "gopls",
                "rust-analyzer",
                "yaml-language-server",
                "html-lsp",
                "css-lsp",
                "prettier",
                "lua-language-server",
            },
        },
    },
}
