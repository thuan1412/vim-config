local map = vim.api.nvim_set_keymap

vim.api.nvim_set_keymap('n', ']b', ':BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[b', ':BufferPrevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-x>', ':BufferClose<CR>', { noremap = true, silent = true })

local jumpBufOps = { noremap = true, silent = true }
map('n', '<leader>1', ':BufferGoto 1<CR>', jumpBufOps)
map('n', '<leader>2', ':BufferGoto 2<CR>', jumpBufOps)
map('n', '<leader>3', ':BufferGoto 3<CR>', jumpBufOps)
map('n', '<leader>4', ':BufferGoto 4<CR>', jumpBufOps)
map('n', '<leader>5', ':BufferGoto 5<CR>', jumpBufOps)
map('n', '<leader>6', ':BufferGoto 6<CR>', jumpBufOps)
map('n', '<leader>7', ':BufferGoto 7<CR>', jumpBufOps)
map('n', '<leader>8', ':BufferGoto 8<CR>', jumpBufOps)
map('n', '<leader>9', ':BufferGoto 9<CR>', jumpBufOps)

vim.cmd('source /home/thuando/.config/nvim/lua/pl-barbar/meo.vim')
