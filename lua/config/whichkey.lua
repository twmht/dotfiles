local M = {}

local whichkey = require "which-key"


-- vim.keymap.set('i', 'jj', '<ESC>', {noremap=true})
-- vim.keymap.set('i', '{<CR>', '{<CR><END><CR>}<UP><END>', {noremap=true})
-- vim.keymap.set('i', '=', '<Space>=<Space>', {noremap=true})
-- vim.keymap.set('i', '==', '<Space>==<Space>', {noremap=true})
-- vim.keymap.set('i', '!=', '<Space>!=<Space>', {noremap=true})
-- vim.keymap.set('i', '<=', '<Space><=<Space>', {noremap=true})
-- vim.keymap.set('i', '>=', '<Space>>=<Space>', {noremap=true})
-- vim.keymap.set('i', '(', '()<Left>', {noremap=true})
-- vim.keymap.set('n', '<Tab>', '>>_', {noremap=true})
-- vim.keymap.set('n', '<S-Tab>', '<<_', {noremap=true})
-- vim.keymap.set('v', '<Tab>', '>', {noremap=true})
-- vim.keymap.set('v', '<S-Tab>', '<', {noremap=true})

-- vim.keymap.set('n', '<F8>', ":set hls! <Bar> set hls?<CR>", {noremap = true, silent = true})
-- vim.keymap.set('n', '<F9>', ':TagbarToggle<CR>', {noremap=true, silent = true})


local conf = {
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
  },
}
whichkey.setup(conf)

local iopts = {
  mode = "i", -- Normal mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}
