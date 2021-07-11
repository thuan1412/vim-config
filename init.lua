if vim.fn.has('termguicolors') == 1 then
    vim.o.termguicolors = true
end

require('global')
require('settings')
require('plugins')
require('pl-barbar')
require('pl-colorizer')
require('pl-compe')
require('pl-galaxyline')
require('pl-git')
require('pl-neoformat')
require('pl-nvim-comment')
require('pl-web-devicons')
require('pl-telescope')
require('pl-nvim-tree')
require('pl-which-key')
require('plugs.indent-blankline')

-- require('plug/completion-vim')

--- lsp
require('lsp')
require('lsp.ruby-ls')
require('lsp.js-ts-ls')
require('lsp.lua-ls')
require('lsp.go-ls')
