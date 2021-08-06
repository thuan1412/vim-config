local cmd = vim.cmd

-- TODO figure out why this don't work
vim.fn.sign_define("LspDiagnosticsSignError",
                   {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"})
vim.fn.sign_define("LspDiagnosticsSignWarning",
                   {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"})
vim.fn.sign_define("LspDiagnosticsSignHint",
                   {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"})
vim.fn.sign_define("LspDiagnosticsSignInformation",
                   {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"})

vim.lsp.handlers["textDocument/hover"] = require('lspsaga.hover').handler
-- vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
-- vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
-- vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
-- vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
-- vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
-- vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
-- vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler

vim.cmd("nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>")
vim.cmd("nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration<CR>")
vim.cmd("nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>")
vim.cmd("nnoremap <silent> gR <cmd>lua vim.lsp.buf.rename()<CR>")
vim.cmd("nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>")

vim.cmd("nnoremap <silent> ca :Lspsaga code_action<CR>")
vim.cmd("nnoremap <silent> K :Lspsaga hover_doc<CR>")
vim.cmd("nnoremap <silent> <C-k> :Lspsaga preview_definition<CR>")
vim.cmd("nnoremap <silent> gh :Lspsaga lsp_finder<CR>")
vim.cmd("nnoremap <silent> gc :Lspsaga code_action<CR>")
-- vim.cmd("nnoremap <silent> gR :Lspsaga rename<CR>")
-- vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.cmd("nnoremap <silent> [g :Lspsaga diagnostic_jump_prev<CR>")
vim.cmd("nnoremap <silent> ]g :Lspsaga diagnostic_jump_next<CR>")
-- scroll down hover doc or scroll in definition preview
vim.cmd("nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")
-- scroll up hover doc
vim.cmd("nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")
vim.cmd('command! -nargs=0 LspVirtualTextToggle lua require("lsp/virtual_text").toggle()')

-- Set Default Prefix.
-- Note: You can set a prefix per lsp server in the lv-globals.lua file

-- Setting for LSP
cmd("let g:lsp_diagnostics_float_cursor = 1")
cmd("let g:lsp_diagnostics_float_delay = 500")
