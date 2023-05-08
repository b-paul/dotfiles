-- Uncomment this for a broken implementation of format on save! :(
--local format = vim.api.nvim_create_augroup("LSPFormat", { clear = true })
--vim.api.nvim_create_autocmd("BufWritePre", {
--command = ":lua vim.lsp.buf.format()",
--group = format,
--buffer = 0,
--})

-- Mappings
local opts = { noremap = true, silent = true }

-- Open detail about a diagnostic
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
-- Go to the previous or next diagnostic
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
-- Create a list of diagnostics for the current buffer
-- This is pretty cool! It makes a new buffer which contains the list, and you
-- can goto each diagnostic by pressing enter on it!
vim.keymap.set('n', '<leader><leader>e', vim.diagnostic.setloclist, opts)

-- Only do this stuff once a language server has been attached
local on_attach = function(_, bufnr)
    -- Enable insert mode autocompletion with <C-x><C-o> (:h 'omnifunc')
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap = true, silent = true, buffer = bufnr }

    -- Format the current file using the formatter provided with the language
    -- server
    vim.keymap.set('n', '<leader><leader>f', vim.lsp.buf.format, bufopts)
    -- Show information about the symbol under the cursor in a floating windor.
    -- Call twice to move into the floating window.
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    -- Jump to definitions
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<leader>d', vim.lsp.buf.type_definition, bufopts)
    -- List all references of the symbol under the cursor
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    -- Rename something
    vim.keymap.set('n', '<leader><leader>r', vim.lsp.buf.rename, bufopts)
    -- Run a code action (very cool) with telescope i think somehow
    vim.keymap.set('n', '<leader><leader>c', vim.lsp.buf.code_action, bufopts)
end

-- Servers
require 'lspconfig'.ccls.setup {
    on_attach = on_attach,
}
require 'lspconfig'.hls.setup {
    on_attach = on_attach,
}
require 'lspconfig'.texlab.setup {
    on_attach = on_attach,
}
require 'lspconfig'.typst_lsp.setup {
    on_attach = on_attach,
    settings = {
        --exportPdf = "onType"
    }
}
require 'lspconfig'.lua_ls.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enabled = false,
            },
        }
    }
}
require 'rust-tools'.setup({
    server = {
        on_attach = on_attach,
        settings = {
            ["rust-analyzer"] = {
                checkOnSave = {
                    allTargets = false,
                },
                inlayHints = { locationLinks = false },
            }
        }
    }
})
require 'zk'.setup({
    lsp = {
        config = {
            on_attach = on_attach,
        }
    }
})
