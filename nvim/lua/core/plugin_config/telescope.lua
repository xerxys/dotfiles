local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Space>tf', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>tg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>th', builtin.help_tags, {})
