local cmd = vim.cmd
local fn = vim.fn
local api = vim.api

local g = vim.g
local o, wo, bo = vim.o, vim.wo, vim.bo

o.mouse = "a" -- Enable your mouse
o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
-- o.showbreak = '╰─➤' -- Displayed when a line long to the below line
o.showtabline = 2 -- Always show tabs
o.showmode = false -- We don't need to see things like -- INSERT -- anymore
o.updatetime = 250 -- Faster completion
o.timeoutlen = 500 -- By default timeoutlen is 1000 ms
o.ignorecase = true
o.smartcase = true
o.expandtab = true
o.smarttab = true
o.tabstop = 2
o.shiftwidth=2
o.softtabstop=2
o.tabstop=2
wo.cursorline = true -- Enable highlighting of the current line

-- cmd('set ts=4') -- Insert 2 spaces for a tab
-- cmd('set sw=4') -- Change the number of space characters inserted for indentation

cmd('let fg_target = \'green\'')

vim.opt.number = true
vim.opt.relativenumber = true


-- Global settings
vim.g.tokyonight_style = "storm"
vim.cmd[[colorscheme space-vim-dark]]
O.auto_complete = true
O.colorscheme = "tokyonight"
O.auto_close_tree = 0
O.wrap_lines = false

cmd('let g:lsp_log_verbose = 1')
cmd('let g:lsp_log_file = expand(\'~/vim-lsp.log\')')
cmd('let g:asyncomplete_log_file = expand(\'~/asyncomplete.log\')')
cmd('set synmaxcol=2048')

-- auto run commands
local javascript_autoformat = {'BufWritePre', '*.js', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}
local javascriptreact_autoformat = {'BufWritePre', '*.jsx', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}
local typescript_autoformat = {'BufWritePre', '*.ts', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}
local typescriptreact_autoformat = {'BufWritePre', '*.tsx', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}

local auto_formatters = {}
if O.tsserver.autoformat then
    table.insert(auto_formatters, javascript_autoformat)
    table.insert(auto_formatters, javascriptreact_autoformat)
    table.insert(auto_formatters, typescript_autoformat)
    table.insert(auto_formatters, typescriptreact_autoformat)
end

cmd('autocmd Filetype typescriptreact setlocal tabstop=2')
cmd("au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'")
cmd("au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'")
