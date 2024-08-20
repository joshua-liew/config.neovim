" Plugins will be downloaded under the specified directory.
call plug#begin( stdpath('data') . '/plugged' )
" Declare the list of plugins.

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground',
Plug 'ThePrimeagen/harpoon',
Plug 'tpope/vim-fugitive',
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'itchyny/lightline.vim'

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
" LSP Support
Plug 'neovim/nvim-lspconfig'
" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

Plug 'ThePrimeagen/vim-be-good'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


lua << EOF
require("joshua")
EOF
