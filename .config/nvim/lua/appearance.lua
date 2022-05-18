
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
" contrast for gruvbox-material: 'hard', 'medium'(default), 'soft'
  let g:gruvbox_material_background = 'hard'
" Better performance
  let g:gruvbox_material_better_performance = 1
" light/dark
  set background=dark

  colorscheme gruvbox-material

]]
