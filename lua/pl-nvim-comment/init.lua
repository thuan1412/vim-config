require('nvim_comment').setup()
vim.api.nvim_set_keymap("n", "?", ":CommentToggle<CR>", { silent = true })
vim.api.nvim_set_keymap("v", "?", ":CommentToggle<CR>", { silent = true })
