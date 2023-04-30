vim.g.tagbar_autofocus = 1
vim.g.tagbar_autoclose = 1
vim.keymap.set('n', 'tt', ':lua require("buffer_manager.ui").toggle_quick_menu()<CR>', {noremap=true, silent = true})
