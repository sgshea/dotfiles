-- Set mapleader
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Telescope
vim.api.nvim_set_keymap(
    "n",
    "<leader>ff",
    ":Telescope find_files<cr>",
    { noremap = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>fg",
    ":Telescope live_grep<cr>",
    { noremap = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>fb",
    ":Telescope buffers<cr>",
    { noremap = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>fh",
    ":Telescope help_tags<cr>",
    { noremap = true}
)

-- NVIMTree
vim.api.nvim_set_keymap(
    "n",
    "<leader>nt",
    ":NvimTreeToggle<cr>",
    { noremap = true}
)

-- Neogit
local neogit = require('neogit')

neogit.setup {}

-- Leap
require('leap').set_default_keymaps()

-- Barbar
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
