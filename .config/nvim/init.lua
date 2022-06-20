------------------------------------------
--      Sammy Neovim Configuration      --
--                                      --
--      Using packer to manage plugins  --
------------------------------------------
-- Plugins
require('plugins')

-- Options/Appearance
require('options')

-- Configurations
require('lsp')
require('nvim-tree-config')
require('lualine-config')

require('bindings')
