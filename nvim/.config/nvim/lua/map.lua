-- Make CTRL-L clear echo and search
vim.api.nvim_set_keymap('n', '<C-L>', ':noh<CR>:mode<CR>',
                        { noremap = true, silent = true })

-- Make leader+a insert one from the end of the line because semicolon
vim.api.nvim_set_keymap('n', '<leader>a', '$i',
                        { noremap = true, silent = true })
-- Make leader+x delete char at the end of the line
vim.api.nvim_set_keymap('n', '<leader>x', '$x',
                        { noremap = true, silent = true })
-- Make leader+f fix the spelling of the current word
vim.api.nvim_set_keymap('n', '<leader>f', '1z=',
                        { noremap = true, silent = true })
-- Make leader+C open the colour scheme menu
vim.api.nvim_set_keymap('n', '<leader>C', ':Telescope colorscheme<CR>',
                        { noremap = true, silent = true })
-- Make leader+F fuzzyfind files
vim.api.nvim_set_keymap('n', '<leader>F', ':Telescope find_files<CR>',
                        { noremap = true, silent = true })
 
-- Make Shift-Delete do nothing (my keyboard is weird so I press it a lot)
vim.api.nvim_set_keymap('i', '<S-Del>', '', { noremap = true, silent = true })

-- Tab completion
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

-- TODO
-- LSP mappings
