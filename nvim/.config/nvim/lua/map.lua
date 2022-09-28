-- Make CTRL-L clear echo and search
vim.keymap.set('n', '<C-L>', ':noh<CR>:mode<CR>',
    { noremap = true, silent = true })

-- Make leader+a insert one from the end of the line because semicolon
vim.keymap.set('n', '<leader>a', '$i',
    { noremap = true, silent = true })
-- Make leader+x delete char at the end of the line
vim.keymap.set('n', '<leader>x', '$x',
    { noremap = true, silent = true })
-- Make leader+f fix the spelling of the current word
vim.keymap.set('n', '<leader>f', '1z=',
    { noremap = true, silent = true })
-- Make leader+C open the colour scheme menu
vim.keymap.set('n', '<leader>C', ':Telescope colorscheme<CR>',
    { noremap = true, silent = true })
-- Make leader+F fuzzyfind files
vim.keymap.set('n', '<leader>F', ':Telescope find_files<CR>',
    { noremap = true, silent = true })

-- Make Shift-Delete do nothing (my keyboard is weird so I press it a lot)
vim.keymap.set('i', '<S-Del>', '', { noremap = true, silent = true })

-- Tab completion
--vim.keymap.set("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
--vim.keymap.set("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
--vim.keymap.set("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
--vim.keymap.set("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

-- LSP mappings in after/plugin/lsp.lua
