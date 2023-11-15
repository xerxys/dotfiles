vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- clear search highlighting
vim.keymap.set('n', '<leader>c', ':noh<return>', {})

--uses spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- Navigation in Insert Mode
vim.keymap.set('i', '<a-h>', '<left>', {})
vim.keymap.set('i', '<a-j>', '<down>', {})
vim.keymap.set('i', '<a-k>', '<up>', {})
vim.keymap.set('i', '<a-l>', '<right>', {})
vim.keymap.set('i', '<a-0>', '<c-o>0', {})
vim.keymap.set('i', '<a-4>', '<c-o>$', {})
vim.keymap.set('i', '<a-w>', '<c-o>w', {})
vim.keymap.set('i', '<a-b>', '<c-o>b', {})

-- Editing in Insert Mode
vim.keymap.set('i', '<a-c>', '<c-o>c', {})

-- Split Navigation
vim.keymap.set('n', '<c-h>', '<c-w>h', {})
vim.keymap.set('n', '<c-j>', '<c-w>j', {})
vim.keymap.set('n', '<c-k>', '<c-w>k', {})
vim.keymap.set('n', '<c-l>', '<c-w>l', {})

-- Terminal Shit
vim.keymap.set('t', '<c-[>', "<c-\\><c-N>", {})
vim.keymap.set('t', '<c-h>', "<c-\\><c-N><c-w>h", {})
vim.keymap.set('t', '<c-j>', "<c-\\><c-N><c-w>j", {})
vim.keymap.set('t', '<c-k>', "<c-\\><c-N><c-w>k", {})
vim.keymap.set('t', '<c-l>', "<c-\\><c-N><c-w>l", {})

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.signcolumn = "number"
