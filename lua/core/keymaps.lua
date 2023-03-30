local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-n>'         , ':bn<CR>'            ) -- next buffer
vim.keymap.set('n', '<C-p>'         , ':bp<CR>'            ) -- previous buffer
vim.keymap.set('n', '<Space><Space>', ':NvimTreeToggle<CR>') -- previous buffer

-- Telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
