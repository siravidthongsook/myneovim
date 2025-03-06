return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        local harpoonUI = require("harpoon.ui")
        vim.keymap.set("n", "<leader>hp", harpoonUI.toggle_quick_menu)
        vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
        vim.keymap.set("n", "<leader>kn", harpoonUI.nav_next)
        vim.keymap.set("n", "<leader>nk", harpoonUI.nav_prev)
        vim.keymap.set("n", "<leader>h1", function() harpoonUI.nav_file(1) end)
        vim.keymap.set("n", "<leader>h2", function() harpoonUI.nav_file(2) end)
        vim.keymap.set("n", "<leader>h3", function() harpoonUI.nav_file(3) end)
        vim.keymap.set("n", "<leader>h4", function() harpoonUI.nav_file(4) end)
        vim.keymap.set("n", "<leader>h5", function() harpoonUI.nav_file(5) end)
        vim.keymap.set("n", "<leader>h6", function() harpoonUI.nav_file(6) end)
        vim.keymap.set("n", "<leader>h7", function() harpoonUI.nav_file(7) end)
        vim.keymap.set("n", "<leader>h8", function() harpoonUI.nav_file(8) end)
        vim.keymap.set("n", "<leader>h9", function() harpoonUI.nav_file(9) end)
        vim.keymap.set("n", "<leader>h0", function() harpoonUI.nav_file(0) end)
    end
}
