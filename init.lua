require("siravid")
require("config.lazy")

require("dap-lldb").setup()
require("fidget").setup({})
require('lualine').setup({
    sections = {
        lualine_c = {
            {
                'filename',
                path = 1
            }
        }
    }
})
require("luasnip.loaders.from_vscode").lazy_load()
require'luasnip'.filetype_extend("typescriptreact", {"html"})
require'luasnip'.filetype_extend("javascriptreact", {"html"})
require("oil").setup({
    default_file_explorer = true,
    view_options = {
        show_hidden = true
    }
})
vim.opt.termguicolors = true
vim.opt.encoding = "utf-8"
