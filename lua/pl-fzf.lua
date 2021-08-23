vim.cmd("inoremap <expr> <c-x><c-f> fzf#vim#complete#path('fdfind')")
vim.cmd("inoremap <expr> <c-x><c-f> fzf#vim#complete#path('rg --files')")
