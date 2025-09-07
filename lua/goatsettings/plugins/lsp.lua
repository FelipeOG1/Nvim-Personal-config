return {
    -- Mason: gestor de LSP, DAP y linters
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    -- Integración Mason + LSPConfig
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "mason.nvim", "neovim/nvim-lspconfig" },
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls", "pyright", "ts_ls" },
            }
        end,
    },

    -- Configuración de LSP
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            -- Ejemplo: Lua LSP
            lspconfig.lua_ls.setup {
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                        workspace = { library = vim.api.nvim_get_runtime_file("", true) },
                    },
                },
            }

            -- Ejemplo: Python
            lspconfig.pyright.setup {}
            
            -- Ejemplo: TypeScript / JS
            lspconfig.ts_ls.setup {}
        end,
    },
    vim.diagnostic.config({
    virtual_text = false,
    signs = false,
    underline = true,
    update_in_insert = false,
})
}
