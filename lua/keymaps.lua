-- KeyMapping for Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- VIM KeyMapping for PackerSync.
vim.keymap.set('n', '<leader>ps', vim.cmd.PackerSync)

-- VIM KeyMapping for Mason.
vim.keymap.set('n', '<leader>ms', vim.cmd.Mason)






