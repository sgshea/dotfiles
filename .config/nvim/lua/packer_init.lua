-----------------------------------------------
-- Plugin Manager Configuration		     --
-- packer.nvim				     --
-- https://github.com/wbthomason/packer.nvim --
-----------------------------------------------
-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
end

-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Install plugins
return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- packer can manage itself
-- IDE-Features
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
              'kyazdani42/nvim-web-devicons', -- optional, for file icon
            },
        config = function() require'nvim-tree'.setup {} end
    }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } 
    use 'tpope/vim-fugitive'            -- Git stuff
    use 'nvim-lua/plenary.nvim'         -- Required by Telescope
    use 'nvim-telescope/telescope.nvim' -- Nice grep interface
    use {                               -- Wrapper that makes configuring LSP way nicer
        'junnplus/nvim-lsp-setup',
        requires = {
            'neovim/nvim-lspconfig',
            'williamboman/nvim-lsp-installer',
        }
    }
    use 'hrsh7th/nvim-cmp'              -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp'          -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip'      -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip'              -- Snippets plugin
    -- Languages
    use 'sheerun/vim-polyglot'          -- For most languages
    -- Appearance
    use 'sainnhe/gruvbox-material'      -- gruv
    use 'Mofiqul/vscode.nvim'           -- 

    use {
       'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use "lukas-reineke/indent-blankline.nvim" -- Indent guides
    use {'stevearc/dressing.nvim'}      -- Make things generally prettier
    -- Dashboard (start screen)
    use {
      'goolord/alpha-nvim',
      requires = { 'kyazdani42/nvim-web-devicons' },
    }







  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
