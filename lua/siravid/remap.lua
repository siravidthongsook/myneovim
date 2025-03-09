-- leader
vim.g.mapleader = " "


-- main
-- vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
vim.keymap.set("n", "<leader>fe", "<CMD>Oil<CR>")

-- undo tree
vim.keymap.set("n", "<leader>uo", vim.cmd.UndotreeToggle)

-- quality of life
vim.keymap.set("n", "<Esc>", "<CMD>nohlsearch<CR>")
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move line down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move line up
vim.keymap.set("v", ">", ">gv") -- indent selected line and select it again
vim.keymap.set("v", "<", "<gv") -- indent selected line and select it again
-- vim.keymap.set("v", "y", "myy`y", { noremap = true, silent = true }) -- make yank line keep cursor position
-- vim.keymap.set("v", "Y", "myY`y", { noremap = true, silent = true }) -- make yank line keep cursor position

vim.keymap.set("v", "y", function()
  -- Save the current cursor position
  local pos = vim.fn.getpos(".")
  -- Check if a register was specified (e.g., "+ or "*)
  if vim.v.register ~= "" then
    -- Yank to the specified register
    vim.cmd('normal! "' .. vim.v.register .. "y")
    vim.api.nvim_echo({{"yanked into \"" .. vim.v.register, "Normal"}}, false, {})
  else
    -- Yank to the default register
    vim.cmd('normal! y')
    vim.api.nvim_echo({{"yanked into " .. vim.v.register, "Normal"}}, false, {})
  end
  -- Restore the cursor position
  vim.fn.setpos(".", pos)
end, { noremap = true })

vim.keymap.set("v", "Y", function()
  -- Save the current cursor position
  local pos = vim.fn.getpos(".")
  -- Check if a register was specified (e.g., "+ or "*)
  if vim.v.register ~= "" then
    -- Yank to the specified register
    vim.cmd('normal! "' .. vim.v.register .. "Y")
    vim.api.nvim_echo({{"Yanked into \"" .. vim.v.register, "Normal"}}, false, {})
  else
    -- Yank to the default register
    vim.cmd('normal! Y')
    vim.api.nvim_echo({{"Yanked into " .. vim.v.register, "Normal"}}, false, {})
  end
  -- Restore the cursor position
  vim.fn.setpos(".", pos)
end, { noremap = true })

vim.keymap.set("n", "<leader>j", "<CMD>cnext<CR>")
vim.keymap.set("n", "<leader>h", "<CMD>cprev<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>wq", "wq<CR>")
vim.keymap.set("n", "<leader>Q", ":q!")
vim.api.nvim_set_keymap('n', '<leader>+', '<cmd>resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>-', '<cmd>resize -5<CR>', { noremap = true, silent = true })

--lsp
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<C-k>", vim.lsp.buf.hover)
vim.keymap.set({'n','v'}, "<leader>ff", vim.lsp.buf.format, {desc= "Format code with lsp"})
