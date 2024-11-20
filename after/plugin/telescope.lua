local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', function()
	builtin.find_files{
		hidden = true, 
		no_ignore = true,
		file_ignore_patterns = {".git", "%.pyc"}
	}
end, { desc = 'Telescope find files' })

vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope find files tracked with git' })
vim.keymap.set('n', '<leader>lf', builtin.live_grep, { desc = 'Telescope find text in project' })
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
