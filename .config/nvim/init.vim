" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'

" General Config
Plug 'neovim/nvim-lspconfig'

" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'sainnhe/gruvbox-material'
Plug 'shaunsingh/nord.nvim'
Plug 'ray-x/aurora'

" Icons
Plug 'kyazdani42/nvim-web-devicons'

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Fuzzy Searcher
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Auto-completion
Plug 'ms-jpq/coq-nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

" Use 's' followed by two characters to find next instance
Plug 'justinmk/vim-sneak'

" Async make
Plug 'neomake/neomake'

" Git functionality
Plug 'tpope/vim-fugitive'

" Discord Rich-Presence
Plug 'andweeb/presence.nvim'

" Games

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Standard tab to spacing
set tabstop=4 shiftwidth=4 expandtab
set number

" Colors
set background=dark
set termguicolors
colorscheme gruvbox-material
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_background = 'hard'
let g:airline_theme = 'gruvbox_material'
let g:airline_powerline_fonts = 1

" Configuration
let g:neomake_python_enabled_makers = ['pylint']
let g:neomake_java_enabled_makers = ['javac']
let g:coq_settings = { 'auto_start': v:true, 'clients.tabnine.enabled': v:true }

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Clipboard
set clipboard+=unnamedplus
