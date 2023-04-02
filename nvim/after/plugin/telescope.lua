local builtin = require('telescope.builtin')
local ui = require("harpoon.ui")

vim.keymap.set("n", "<C-u>", function() ui.nav_file(1) end)
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-n>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
