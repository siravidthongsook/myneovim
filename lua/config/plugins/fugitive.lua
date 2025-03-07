return {
    'tpope/vim-fugitive',
    config = function()
        vim.keymap.set("n", "<leader>gc", "<CMD>Git commit -a<CR>")
        vim.keymap.set("n", "<leader>gg", "<CMD>Git<CR>")
        vim.keymap.set("n", "<leader>ga", "<CMD>Git add .<CR>")
        vim.keymap.set("n", "<leader>gp", ":Git push")
    end

}

