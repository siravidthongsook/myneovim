-- leader
vim.g.mapleader = " "


-- main
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- undo tree
vim.keymap.set("n", "<leader>uo", vim.cmd.UndotreeToggle)

-- a little things
vim.keymap.set("n", "<Esc>", "<CMD>nohlsearch<CR>")
