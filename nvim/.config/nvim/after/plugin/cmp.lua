-- TODO
-- set max autocomplete field count

local cmp = require 'cmp'
local luasnip = require 'luasnip'

local function has_words_before()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    -- make this line not ugly please!
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
                --            elseif luasnip.expand_or_jumpable() then
                --                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
                --            elseif luasnip.jumpable(-1) then
                --                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
        --['<CR>'] = cmp.mapping.confirm({ select = true }),
        -- Add <CR> binding!!
        -- <CR> binding sucks! it means you are unable to create a new line
    },
    sources = cmp.config.sources({
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'cmp-nvim-lsp-signature-help' },
        { name = 'path' },
        { name = 'orgmode' },
        { name = 'luasnip' },
        { name = 'calc' },
        { name = 'latex_symbols' },
        { name = 'spell' },
        { name = 'buffer', keyword_length = 5 },
        --{ name = 'rg' }, idk how to use this though but it seems cool
    })
    -- TODO Sorting!!
})

cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' },
        { name = 'cmdline' },
    })
})

cmp.setup.cmdline('/', {
    sources = cmp.config.sources({
        { name = 'buffer' },
    })
})
