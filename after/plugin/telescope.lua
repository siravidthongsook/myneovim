-- telescope
require('telescope').setup {
  defaults = {
    ignore_case = true,
    smart_case = false,
  },
  pickers = {
    live_grep = {
      additional_args = function()
        return { "--ignore-case" }
      end,
    },
  },
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>lf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>lg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
