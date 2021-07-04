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

cmd('set ts=4') -- Insert 2 spaces for a tab
cmd('set sw=4') -- Change the number of space characters inserted for indentation

cmd('let fg_target = \'green\'')

vim.opt.number = true
vim.opt.relativenumber = true

vim.cmd[[colorscheme doom-one]]

-- Global settings
O.auto_complete = true
O.colorscheme = "dracula"
O.auto_close_tree = 0
O.wrap_lines = false
