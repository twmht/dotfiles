-- We use lazy.nvim as our plugin manager
require('config/settings')
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    {'scrooloose/nerdcommenter'},
    {'martinda/Jenkinsfile-vim-syntax'},
    {'Lokaltog/vim-easymotion'},
    {'airblade/vim-gitgutter'},
    {'majutsushi/tagbar'},
    {'nanotech/jellybeans.vim'},
    {'tpope/vim-surround'},
    {'vim-airline/vim-airline'},
    {'neoclide/coc.nvim', branch='release'},
    {'kassio/neoterm'},
    {'j-morano/buffer_manager.nvim', branch='highlight-modified', dependencies={'nvim-lua/plenary.nvim'}},
    {'danymat/neogen', dependencies={'nvim-treesitter/nvim-treesitter'}}
})

-- Config for color scheme
require('config/colorscheme')

-- Config for each plugin
require('config/neogen')
require('config/nerdcommenter')
require('config/tagbar')
require('config/buffer_manager')
require('config/coc')
