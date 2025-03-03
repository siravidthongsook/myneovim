return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        vim.keymap.set("n", "<leader>hp", require("harpoon.ui").toggle_quick_menu)
        vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
        vim.keymap.set("n", "<leader>hn", require("harpoon.ui").nav_next)
        vim.keymap.set("n", "<leader>hN", require("harpoon.ui").nav_prev)
    end
}
