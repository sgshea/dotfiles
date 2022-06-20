-- neovim options
-- :help options
local options = {
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  showtabline = 2,                         -- always show tabs
  smartindent = true,                      -- make indenting smarter again
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 4,                          -- the number of spaces inserted for each indentation
  tabstop = 4,                             -- insert 4 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                            -- display lines as one long line
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,
}
vim.opt.shortmess:append "c"
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- colorschemes
vim.cmd[[
" contrast for gruvbox-material: 'hard', 'medium'(default), 'soft'
  let g:gruvbox_material_background = 'hard'
" Better performance
  let g:gruvbox_material_better_performance = 1
" light/dark
  set background=dark

  colorscheme gruvbox-material
]]
