require('nvim_comment').setup()
vim.api.nvim_set_keymap("n", "<C-Left>", ":CommentToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("v", "<C-Left>", ":CommentToggle<CR>", { silent = true})
