-- npm i -g pyright
require'lspconfig'.pyright.setup {
    cmd = {DATA_PATH .. "/lspinstall/python/node_modules/.bin/pyright-langserver", "--stdio"},
    -- on_attach = require'lsp'.common_on_attach,
    -- capabilities = require'lsp'.common_capabilities,
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = O.python.diagnostics.virtual_text,
            signs = O.python.diagnostics.signs,
            underline = O.python.diagnostics.underline,
            update_in_insert = true

        })
    },
    settings = {
        python = {
            analysis = {
                typeCheckingMode = O.python.analysis.type_checking,
                autoSearchPaths = O.python.analysis.auto_search_paths,
                useLibraryCodeForTypes = O.python.analysis.use_library_code_types
            }
        }
    }
}

-- local handlers = {
--     ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--         virtual_text = O.python.diagnostics.virtual_text,
--         signs = O.python.diagnostics.signs,
--         underline = O.python.diagnostics.underline,
--         update_in_insert = true
--     })
-- }
-- handlers = vim.tbl_extend('keep', handlers or {}, require'lsp-status'.extensions.pyls_ms.setup())
--
-- require'lspconfig'.pyls_ms.setup {
--     cmd = {DATA_PATH .. '/python-ms-lsp/pyls-ms'},
--     on_attach = require'lsp'.common_on_attach,
--     capabilities = require'lsp'.common_capabilities,
--     handlers = handlers,
--     settings = {
--         python = {
--             analysis = {
--                 typeCheckingMode = O.python.analysis.type_checking,
--                 autoSearchPaths = O.python.analysis.auto_search_paths,
--                 useLibraryCodeForTypes = O.python.analysis.use_library_code_types
--             }
--         }
--     }
-- }

