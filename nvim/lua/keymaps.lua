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


-- Windows management
-- C-w + v to open a windows vertically
-- C-w + s to open a windows horizontally

--close current windows
keymap('n', '<C-c>', '<C-w>c',nore)
-- resize
keymap('n', '<C-Right>', '<cmd>vertical resize +1<cr>', nore)
keymap('n', '<C-Left>', '<cmd>vertical resize -1<cr>', nore)
keymap('n', '<C-Up>', '<cmd>resize +1<cr>', nore)
keymap('n', '<C-Down>', '<cmd>resize -1<cr>', nore)

-- navigation
keymap('n', '<Right>', '<C-w>l', nore)
keymap('n', '<Left>', '<C-w>h', nore)
keymap('n', '<Up>', '<C-w>k', nore)
keymap('n', '<Down>', '<C-w>j', nore)

-- deal with buffers
keymap('n', '<C-j>', '<cmd>bp<cr>', nore)
keymap('n', '<C-k>', '<cmd>bn<cr>', nore)
keymap('n', '<C-x>', '<cmd>bd %<cr>', nore)


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


-- For vim-go
-- autocompletion
-- keymap('i', '<C-n>', '<C-x><C-o>', nore)


-- For Coc
-- tab completion
vim.cmd([[
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction

  " Insert <tab> when previous text is space, refresh completion if not.
  inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1):
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()
  inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
]])
-- GoTo code navigation.
keymap('n', 'gd', '<Plug>(coc-definition)', re)
keymap('n', 'gy', '<Plug>(coc-type-definition)', re)
keymap('n', 'gi', '<Plug>(coc-implementation)', re)
keymap('n', 'gr', '<Plug>(coc-references)', re)
-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
keymap('n', '[g', '<Plug>(coc-diagnostic-prev)', re)
keymap('n', ']g', '<Plug>(coc-diagnostic-next)', re)
 --Use K to show documentation in preview window.
vim.cmd([[
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
]])
-- Symbol renaming.
keymap('n', '<leader>rn', '<Plug>(coc-rename)', re)
-- Apply AutoFix to problem on the current line.
keymap('n', '<leader>qf', '<Plug>(coc-fix-current)', re)
-- switch between source/header files
keymap('n', '<C-h>', ':CocCommand clangd.switchSourceHeader<cr>', nore)
