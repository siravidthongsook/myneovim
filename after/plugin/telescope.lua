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
    find_files = {
        hidden = true,
          additional_args = function()
            return { "--ignore-case" }
          end,
    }
  },
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>lf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>lk', builtin.keymaps, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>lg', builtin.git_files, { desc = 'Telescope git files' })
vim.keymap.set('n', '<leader>lG', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>lh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>lb', builtin.buffers, { desc = 'Telescope buffers' })

