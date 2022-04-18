require "user.options"
require "user.keymaps"
require "user.plugins"

-- plugin configurations
require "plugin.lualine"
require "plugin.treesitter"
require "plugin.telescope"
require "plugin.ts-autotag"
require "plugin.autopairs"
require "plugin.cmp"
require "plugin.lsp"
require "plugin.comment"

-- Color scheme
vim.cmd "let ayucolor='dark'"
vim.cmd "colorscheme ayu"
