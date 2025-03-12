return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        lazy = false,
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    javascript = { "prettier" },
                    typescript = { "prettier" },
                    javascriptreact = { "prettier" },
                    typescriptreact = { "prettier" },
                    css = { "prettier" },
                    html = { "prettier" },
                    json = { "prettier" },
                    markdown = { "prettier" },
                    -- Add more filetypes as needed
                },
                -- Optional: Format on save
                -- format_on_save = {
                --     timeout_ms = 500,
                --     lsp_fallback = true, -- Fallback to LSP if formatter fails
                -- },
            })

            -- Optional: Keymap to format manually
            vim.keymap.set({'n', 'v'}, "<leader>ff",
            function()
                local comform = require("conform")
                comform.format({
                    async = false,
                    lsp_format = "fallback",
                    timeout_ms = 1000,
                })
            end, { noremap = true })
        end

    },
}
