------------------------------------------------
-- Plugin Manager Configuration for neovim    --
-- packer.nvim                                --
-- https://github.com/wbthomason/packer.nvim  --
------------------------------------------------
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

vim.cmd [[
  set mouse+=a
  set termguicolors
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
    
    -- nvim-tree file explorer
    use {
        "kyazdani42/nvim-tree.lua",
        requires = { 'kyazdani42/nvim-web-devicons' },
        wants = "nvim-web-devicons",
        config = function()
          require("nvim-web-devicons").setup()
          require("nvim-tree").setup {
            hijack_cursor = true,
            view = {
              width = 40
            }
          }
        end
    }
    use 'nvim-lua/plenary.nvim'         -- all the lua functions he dosen't want to write twice

    -- nvim-treesitter, better highlighting
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } 
    use 'tpope/vim-fugitive'            -- git
    -- barbar - a top bufferline
    use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- telescope - fuzzy finder
    use 'nvim-telescope/telescope.nvim'
    use {                               -- wrapper that makes configuring LSP way nicer
      'junnplus/nvim-lsp-setup',
      requires = {
        'neovim/nvim-lspconfig',            -- :LspInstallInfo
        'williamboman/nvim-lsp-installer',  -- :LspInstall [server]
      }
    }
    -- Autocompletion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'L3MON4D3/LuaSnip'              -- Snippets plugin
    use 'saadparwaiz1/cmp_luasnip'      -- Snippets source for nvim-cmp
    use 'tpope/vim-surround'            -- surround
    -- Languages
    use 'sheerun/vim-polyglot'          -- For most languages

    use 'Olical/conjure'                -- Clojure
    use 'tpope/vim-dispatch'
    use 'clojure-vim/vim-jack-in'
    use 'radenling/vim-dispatch-neovim'
    use 'guns/vim-sexp'
    use 'tpope/vim-sexp-mappings-for-regular-people'

    -- Appearance
    use 'kyazdani42/nvim-web-devicons'
    use 'sainnhe/gruvbox-material'      -- gruv

    use {                               -- statusline
     'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use "lukas-reineke/indent-blankline.nvim" -- indent guides
    use {'stevearc/dressing.nvim'}      -- make things generally prettier
    -- Dashboard (start screen)
    use {
      'goolord/alpha-nvim',
      requires = { 'kyazdani42/nvim-web-devicons' },
      config = function ()
          require'alpha'.setup(require'alpha.themes.startify'.config)
      end
    }
    -- presence
    use 'andweeb/presence.nvim'
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
