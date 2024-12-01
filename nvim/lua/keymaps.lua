-- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- other plugin before putting this into your config.

local keymap = vim.api.nvim_set_keymap
local nore = {noremap = true, silent = true}
local re = {noremap=false, silent = true}

-- General
keymap('n', '<SPACE>', '<Nop>', nore) 
vim.g.mapleader = ' '

keymap('i', 'jk', '<ESC>', nore)

keymap('i', '<C-s>', '<cmd>w<cr>', nore)
keymap('n', '<C-s>', '<cmd>w<cr>', nore)


--close current windows
keymap('n', '<C-c>', '<C-w>c',nore)
-- resize windows
keymap('n', '<C-Right>', '<cmd>vertical resize +1<cr>', nore)
keymap('n', '<C-Left>', '<cmd>vertical resize -1<cr>', nore)
keymap('n', '<C-Up>', '<cmd>resize +1<cr>', nore)
keymap('n', '<C-Down>', '<cmd>resize -1<cr>', nore)

-- navigation
keymap('n', '<C-l>', '<C-w>l', nore)
keymap('n', '<C-h>', '<C-w>h', nore)
keymap('n', '<C-k>', '<C-w>k', nore)
keymap('n', '<C-j>', '<C-w>j', nore)


-- For telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', nore)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', nore)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', nore)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', nore)

-- For nvim-tree
keymap('n', '<leader>ll', ':NvimTreeToggle<CR>', nore)
keymap('n', '<leader>lf', ':NvimTreeFindFile<CR>', nore)
keymap('n', '<leader>lc', ':NvimTreeCollapse<CR>', nore)


-- Formatting
keymap('n', '<leader>fm', '<cmd>lua vim.lsp.buf.format()<CR>', nore)
