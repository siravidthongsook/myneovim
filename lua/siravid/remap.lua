-- leader
vim.g.mapleader = " "


-- main
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- undo tree
vim.keymap.set("n", "<leader>uo", vim.cmd.UndotreeToggle)

-- quality of life
vim.keymap.set("n", "<Esc>", "<CMD>nohlsearch<CR>")
vim.keymap.set("i", "<C-c>", "<Esc>")

-- map
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)

--lsp
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action" })
