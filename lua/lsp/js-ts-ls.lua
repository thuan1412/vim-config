require 'lspconfig'.tsserver.setup{
  cmd={'typescript-language-server', '--stdio'};
}

require 'lspconfig'.prismals.setup {
  cmd={'prisma-language-server', '--stdio'};
  filetypes={"prisma"}
}
