vim.cmd('autocmd BufEnter * lua require\'completion\'.on_attach()')

-- " Use <Tab> and <S-Tab> to navigate through popup menu
vim.cmd('inoremap <expr> <Tab>   pumvisible() ? "<C-n>" : "<Tab>"')
vim.cmd('inoremap <expr> <S-Tab> pumvisible() ? "<C-p>" : "<S-Tab>"')

-- " Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- " Avoid showing message extra message when using completion
vim.cmd("set shortmess+=c")

vim.g.completion_chain_complete_list = {
  default = {
    { complete_items = { 'lsp' } },
    { complete_items = { 'buffers' } },
    { mode = { '<c-p>' } },
    { mode = { '<c-n>' } }
  },
}

vim.cmd('imap <silent> <C-Space> <Plug>(completion_trigger)')
-- vim.cmd("imap <silent> <c-space> <Plug>(completion_trigger)")

vim.cmd("let g:completion_enable_snippet = 'UltiSnips'")
