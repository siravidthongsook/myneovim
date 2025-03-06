require("siravid")
require("config.lazy")

require("dap-lldb").setup()
require("fidget").setup({})
require('lualine').setup({})
require("luasnip.loaders.from_vscode").lazy_load()
require'luasnip'.filetype_extend("typescriptreact", {"html"})
require'luasnip'.filetype_extend("javascriptreact", {"html"})
require("oil").setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>", {desc = "Open parent directory"})
vim.opt.termguicolors = true
vim.opt.encoding = "utf-8"
