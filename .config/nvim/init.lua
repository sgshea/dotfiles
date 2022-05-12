------------------------------------------
--      Sammy Neovim Configuration      --
--                                      --
--      Using packer to manage plugins  --
------------------------------------------
-- Setup Packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Plugins
require('packer_init')

-- Appearance
require('appearance')

-- Configurations
require('nvim-tree-config')
require('indent-config')
require('lualine-config')

require('bindings')
