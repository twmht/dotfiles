vim.g.mapleader=','
-- if vim.fn.has('nvim') == 1 then
    -- vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = 1
-- end
vim.o.term  =  "xterm"
vim.o.t_Co = 256
vim.o.t_AB = "\27[48;5;%dm"
vim.o.t_AF = "\27[38;5;%dm"
if vim.fn.has("termguicolors") then
    vim.o.termguicolors = true
end

-- Common Settings
-- https://dev.to/cuimingda/how-to-config-python-provider-for-neovim-3dc5
vim.g.python3_host_prog = '/usr/bin/python3'
vim.cmd('syntax enable')    
vim.cmd('set nocompatible')
vim.cmd("filetype plugin indent on")
vim.o.mouse="nv"
vim.o.ffs="unix,mac,dos"
vim.o.number = true
vim.o.showmode = true
--vim.wo.cursorline = true
vim.o.wildmenu = true
vim.o.wildmode="list:longest,full"
--vim.wo.cursorcolumn = true
vim.o.backspace="2"
vim.wo.wrap = true
vim.wo.linebreak = true
vim.wo.list = false
vim.o.filetype = "on"
vim.o.syntax = "on"
vim.o.backup = false

-- Search Settings
vim.o.showcmd = true
vim.o.incsearch = true
vim.o.showmatch = true
vim.o.laststatus = 2

-- Encoding Settings
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'
vim.o.fileencodings = 'utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1'
vim.o.termencoding = 'utf-8'

-- Intent Settings
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

-- Make sure Vim returns to the same line when you reopen a file.
vim.cmd([[
    augroup line_return
        au!
        au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
    augroup END
]]
)

-- Basic Keymap
vim.keymap.set('i', 'jj', '<ESC>', {noremap=true})
vim.keymap.set('i', '{<CR>', '{<CR><END><CR>}<UP><END>', {noremap=true})
vim.keymap.set('i', '=', '<Space>=<Space>', {noremap=true})
vim.keymap.set('i', '==', '<Space>==<Space>', {noremap=true})
vim.keymap.set('i', '!=', '<Space>!=<Space>', {noremap=true})
vim.keymap.set('i', '<=', '<Space><=<Space>', {noremap=true})
vim.keymap.set('i', '>=', '<Space>>=<Space>', {noremap=true})
vim.keymap.set('i', '(', '()<Left>', {noremap=true})
vim.keymap.set('n', '<Tab>', '>>_', {noremap=true})
vim.keymap.set('n', '<S-Tab>', '<<_', {noremap=true})
vim.keymap.set('v', '<Tab>', '>', {noremap=true})
vim.keymap.set('v', '<S-Tab>', '<', {noremap=true})
vim.keymap.set('n', '<F8>', ":set hls! <Bar> set hls?<CR>", {noremap = true, silent = true})
