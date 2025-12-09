call plug#begin('~/.config/nvim/autoload/plugged')

	" autocomplete
	"Plug 'Shougo/deoplete.nvim'
	"Plug 'zchee/deoplete-clang'

	" Better syntax support
	Plug 'sheerun/vim-polyglot'

	" File explorer
	"Plug 'scrooloose/NERDTree'
	Plug 'nvim-tree/nvim-tree.lua'

	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'

	" LaTeX plugin for neovim
	Plug 'lervag/vimtex'

	" snippet engine and snippets
	"Plug 'SirVer/ultisnips' 
	"Plug 'honza/vim-snippets'

	" gruvbox theme
	Plug 'morhetz/gruvbox'

call plug#end()
