-- If you are using rvm, make sure to change below configuration
require'lspconfig'.tsserver.setup{}

require'lspconfig'.solargraph.setup {
    cmd = {"solargraph", "stdio"},
	flags = {
		debounce_text_changes = 150,
	}
    -- on_attach= require'lsp'.common_on_attach
    -- filetypes = O.ruby.filetypes,
}
