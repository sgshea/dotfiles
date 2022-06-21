# personal dotfiles
These are my dotfiles for some programs that I have configured heavily. As well as the theming I use currently.
## Current Installation
OS: Fedora Linux
Host: ThinkPad X1 Yoga Gen 6
- i7-1165G7
- Single SSD
- 1920x1200 Touchscreen

# Theming
gruvbox, a theme using pastel 'retro groove' colors.
[https://github.com/morhetz/gruvbox] and [https://github.com/sainnhe/gruvbox-material]

## KDE Theming
The Global Theme is Breeze Dark. The Plasma style, colors, and icons are from the GruvboxPlasma theme. The rest of the appearance is Breeze Dark defaults.
### Panel
Used to use Latte Dock, but now only use a single top plasma panel. Use the fullscreen application launcher in left corner, event calendar widget in center, and center tray on right.

# Applications
Konsole
* zsh with powerline
* gruvbox theme
* hack font
* zplug plugin management

## Neovim
* packer.nvim plugin management in lua
leader key of space
### Major plugins, im not listing them all
* nvim-tree for file stuff
* 	spc-n-t to toggle
* nvim-treesitter for better highlighting
* barbar for the top bufferline
* vim-fugitive for git
* telescope for fuzzy finding
* 	spc-f-f for files
* lualine for the bottom statusbar
* alpha-nvim for start dashboard
* presence for discord integration (status)
* nvim-web-devicons for the icon integration
* which-key to help remember keybindings
* nvim-notify for fancy notifications

#### lsp/completion
* nvim-lsp-setup
* 	nvim-lspconfig
* 		:LspInstallInfo
* 	nvim-lsp-installer
* 		:LspInstall [server]
* nvim-cmp for completion
* 	cmp-nvim-lsp
* 	cmp-buffer
* 	cmp-path
* 	cmp-cmdline
* LuaSnip for snippets
* 	cmp_luasnip

For now only setup with servers for Java (jdtls) and Clojure (clojure_lsp)
#### Conjure
This neovim conjuration includes plugins to also work with the Clojure language!
Uses the localleaderkey ","
* Conjure for interactive development (REPL)
* 	`:Lein` to start a REPL
* 	`, c f` to connect to a REPL, or open a Clojure file
* 	`, l v` to close the log window
* 	`, l v` for a vertical split between code and REPL
* 	`, l h` for a horizontal split between code and REPL
* 	`, e b` evaluate current buffer
* 	`, e f` evaluate code in the file
* 	`, e e` evaluate current expression
* 	`, e r` evaluate top level form
* 	`, e !` evaluate current form and replace with result
