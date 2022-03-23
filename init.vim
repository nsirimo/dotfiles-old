if has("nvim")
	let g:plug_home = stdpath('data') . '/plugged'
endif
call plug#begin('~/.vim/plugged')
    Plug 'ayu-theme/ayu-vim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'cohama/lexima.vim'

    if has("nvim")
	    Plug 'nvim-lua/popup.nvim'
      Plug 'akinsho/bufferline.nvim'
      Plug 'kyazdani42/nvim-tree.lua'
	    Plug 'nvim-lua/plenary.nvim'
      Plug 'lewis6991/gitsigns.nvim'
      Plug 'elixir-editors/vim-elixir'
      Plug 'numToStr/Comment.nvim'
      Plug 'glepnir/dashboard-nvim'
      Plug 'sindrets/diffview.nvim'
      Plug 'ggandor/lightspeed.nvim'
      Plug 'kyazdani42/nvim-web-devicons'
      Plug 'alvan/vim-closetag'
      Plug 'nvim-lualine/lualine.nvim'
      Plug 'neovim/nvim-lspconfig'
      Plug 'hrsh7th/nvim-cmp'
      Plug 'hrsh7th/cmp-nvim-lsp'
      Plug 'saadparwaiz1/cmp_luasnip'
      Plug 'L3MON4D3/LuaSnip'
      Plug 'nvim-telescope/telescope.nvim'
      Plug 'Pocco81/TrueZen.nvim'
    endif
call plug#end()
set termguicolors
let ayucolor="mirage"
colorscheme ayu
lua << EOF
require("bufferline").setup()
require('Comment').setup()
EOF
