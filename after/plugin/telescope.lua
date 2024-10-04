local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })

vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope find files tracked with git' })
