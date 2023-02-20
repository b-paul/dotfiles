require 'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
}

-- lol idk where else to put this
vim.keymap.set('n', '<leader>p', require('nabla').popup, { noremap = true })
