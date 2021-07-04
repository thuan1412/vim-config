if vim.fn.has('termguicolors') == 1 then
    vim.o.termguicolors = true
end

require('global')
require('settings')
require('plugins')

require('pl-barbar')
require('pl-colorizer')
require('pl-compe')
require('pl-nvim-comment')
require('pl-web-devicons')
require('pl-telescope')
require('pl-nvim-tree')
require('pl-which-key')

--- lsp
require('lsp')
require('lsp.ruby-ls')
require('lsp.js-ts-ls')
-- require 'lspconfig'.solargraph.setup {
--   cmd={'solargraph', 'stdio'};
-- }
