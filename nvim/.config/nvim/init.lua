require 'plugins'
require 'settings'
require 'map'
require 'commands'

-- I can't remember why this is in my config but it might be important for
-- something
P = function(table)
    print(vim.inspect(table))
    return table
end

--if packer_plugins["lush.nvim"] and packer_plugins["lush.nvim"].loaded then
    --load 'colours'
--end
