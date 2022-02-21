require'lspconfig'.ccls.setup{}
require'lspconfig'.hls.setup{}

-- rust
require'lspconfig'.rust_analyzer.setup{}
require'rust-tools'.setup({})

require'lspconfig'.texlab.setup{}
require'lspconfig'.sumneko_lua.setup{}
