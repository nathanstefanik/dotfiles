call plug#begin('~/.config/nvim/autoload/plugged')

  " Gruvbox theme
  Plug 'morhetz/gruvbox'

  " Autopairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'

  " LaTeX
  Plug 'lervag/vimtex'

  " Completion framework
  Plug 'Shougo/deoplete.nvim'

  " Snippet engine
  Plug 'SirVer/ultisnips'

  " Snippets
  Plug 'honza/vim-snippets'

  " File browsing
  Plug 'preservim/nerdtree'

call plug#end()
