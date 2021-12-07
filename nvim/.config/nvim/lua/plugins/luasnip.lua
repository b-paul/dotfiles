function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function check_back_space()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif require'luasnip'.expand_or_jumpable() then
        return t "<Plug>luasnip-expand-or-jump"
    elseif check_back_space() then
        return t "<Tab>"
    else
        return vim.fn['compe#complete']()
    end
end
_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    elseif require'luasnip'.expand_or_jumpable() then
        return t "<Plug>luasnip-expand-or-jump"
    else
        return t "<S-Tab>"
    end
end
