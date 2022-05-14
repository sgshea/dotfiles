
-- Numbering
vim.o.relativenumber = false
vim.o.number = true

-- Colorscheme
vim.cmd([[
  " Important!!
  if has('termguicolors')
      set termguicolors
  endif
]])

vim.cmd[[
  colorscheme gruvbox-material
]]


