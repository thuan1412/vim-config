require('nvim_comment').setup()
vim.api.nvim_set_keymap("n", "<leader>/", ":CommentToggle<CR>", { silent = true})
vim.api.nvim_set_keymap("v", "<leader>/", ":CommentToggle<CR>", { silent = true})
