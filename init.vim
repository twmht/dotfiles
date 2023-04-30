lua require('config/settings')
"set nocompatible
filetype off
call plug#begin("~/.vim/plugged")
Plug 'scrooloose/nerdcommenter'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'Lokaltog/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'nanotech/jellybeans.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-lua/plenary.nvim'
Plug 'j-morano/buffer_manager.nvim', {'branch': 'highlight-modified'}

" Plug 'MunifTanjim/nui.nvim'
" Plug 'dpayne/CodeGPT.nvim'
"
Plug 'kassio/neoterm'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'danymat/neogen'
" Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
" Plug 'folke/which-key.nvim'
call plug#end()


lua require('config/neogen')
lua require('config/colorscheme')
lua require('config/nerdcommenter')
lua require('config/tagbar')
lua require('config/buffer_manager')
lua require('config/coc')
