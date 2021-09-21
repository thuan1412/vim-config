if vim.fn.has('termguicolors') == 1 then
    vim.o.termguicolors = true
end

vim.api.nvim_set_keymap('n', '<leader>w', ':w<cr>', {noremap = true})

require('global')
require('settings')
require('plugins')
require('pl-barbar')
require('pl-colorizer')
-- require('pl-compe')
require('pl-galaxyline')
require('pl-git')
require('pl-neoformat')
require('pl-nvim-comment')
require('pl-web-devicons')
require('pl-telescope')
require('pl-nvim-tree')
require('pl-which-key')
require('pl-spell')
require('pl-symbols-outline')
require('plugs.indent-blankline')
require('pl-coc')
require('pl-vista')
require('pl-fzf')
require('pl-themes')

-- require('plug/completion-vim')

--- lsp
-- require('lsp')
-- require('lsp.ruby-ls')
-- require('lsp.js-ts-ls')
-- require('lsp.lua-ls')
-- require('lsp.go-ls')
-- require('lsp.python-ls')

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

vim.cmd("autocmd FileType sql setlocal omnifunc=vim_dadbod_completion#omni")
