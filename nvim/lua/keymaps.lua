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

-- deal with buffers
keymap('n', '<A-j>', '<cmd>bp<cr>', nore)
keymap('n', '<A-k>', '<cmd>bn<cr>', nore)
keymap('n', '<A-x>', '<cmd>bd %<cr>', nore)


-- For nvim-tree
keymap('n', '<F5>', '<cmd>NvimTreeToggle<cr>', nore)


-- For tagbar
-- nmap <F6> :TagbarToggle<CR>
keymap('n', '<F6>', ':TagbarToggle<CR>', nore)


-- For telescope
-- Find files using Telescope command-line sugar.
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', nore)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', nore)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', nore)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', nore)


-- For Floaterm
-- F4 键进入/退出terminal模式
keymap('t', '<F4>', '<C-\\><C-n>:FloatermToggle<cr>', nore)
keymap('n', '<F4>', ':FloatermToggle<cr>', nore)

-- formatting with nvim-lsp
keymap('n', '<leader>fm', '<cmd>lua vim.lsp.buf.formatting()<CR>', nore)
