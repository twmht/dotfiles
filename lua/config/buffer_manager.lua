vim.cmd('hi BufferManagerModified guifg=#e32636')
vim.keymap.set('n', 'tt', ':lua require("buffer_manager.ui").toggle_quick_menu()<CR>', {noremap=true, silent = true})
