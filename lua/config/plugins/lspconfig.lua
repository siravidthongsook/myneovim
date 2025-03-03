return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                'saghen/blink.cmp'
            },
            {
                "folke/lazydev.nvim",
                ft = "lua", -- only load on lua files
                opts = {
                    library = {
                        -- See the configuration section for more details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({ capabilites = capabilities })
            lspconfig.pyright.setup({ capabilites = capabilities })
            lspconfig.clangd.setup({ capabilites = capabilities })
            lspconfig.eslint.setup({
                capabilites = capabilities
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
                init_options = {
                    preferences = {
                        disableSuggestions = false,
                    }
                }
            })


            vim.diagnostic.config({
                signs= {
                    text = {
                        [vim.diagnostic.severity.ERROR] = 'E',
                        [vim.diagnostic.severity.WARN] = 'W'
                    }
                },
                virtual_text = true,
            })
        end
    },
    {
        "williamboman/mason.nvim",
    }
}
