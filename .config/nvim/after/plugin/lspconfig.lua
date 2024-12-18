require 'lspconfig'.lua_ls.setup {}

require 'lspconfig'.biome.setup {}

require 'lspconfig'.ts_ls.setup {
        on_attach = function(client)
                -- this is important, otherwise tsserver will format ts/js
                -- files which we *really* don't want.
                client.server_capabilities.documentFormattingProvider = false
        end,
}

local _border = "single"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
        vim.lsp.handlers.hover, {
                border = _border
        }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
        vim.lsp.handlers.signature_help, {
                border = _border
        }
)

-- disable virtual text for all diagnostic handlers.
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
                underline    = false,
                virtual_text = false,
                float        = { border = _border },
        }
)

require('lspconfig.ui.windows').default_options = {
        border = _border
}

vim.cmd [[highlight FloatBorder  ctermfg=NONE ctermbg=NONE cterm=NONE]]
