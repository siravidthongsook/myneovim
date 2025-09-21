return {
    {
        'rebelot/kanagawa.nvim',
        config = function()
            -- vim.cmd("colorscheme kanagawa")
        end
    },
    {
        'gmr458/vscode_modern_theme.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require("vscode_modern").setup({
                cursorline = true,
                transparent_background = false,
                nvim_tree_darker = true,
            })
            vim.cmd.colorscheme("vscode_modern")
        end,
    }
--     {
--         'Mofiqul/vscode.nvim',
--         config = function()
--             vim.cmd("colorscheme vscode")
--         end
--     },
}
