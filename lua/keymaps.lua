-- KeyMapping for Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- VIM KeyMapping for PackerSync.
vim.keymap.set('n', '<leader>ss', vim.cmd.PackerSync)

-- VIM KeyMapping for Mason.
vim.keymap.set('n', '<leader>ms', vim.cmd.Mason)

-- VIM KeyMapping for VIM-Kubernetes.

vim.keymap.set('n', '<leader>r', vim.cmd.KubeApply)
vim.keymap.set('n', '<leader>e', vim.cmd.KubeDelete)
vim.keymap.set('n', '<leader>dr', vim.cmd.KubeDirApply)
vim.keymap.set('n', '<leader>de', vim.cmd.KubeDirDelete)







