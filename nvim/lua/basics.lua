-- 显示行号
vim.o.number=true
-- 显示相对行号
vim.wo.relativenumber=true
-- 显示光标所在行
vim.wo.cursorline=true

-- 上下翻动时，预留3行显示
vim.o.scrolloff=3

-- 用空格替换tab
vim.o.expandtab=true
-- 默认缩进2个空格
vim.o.shiftwidth=2
-- 制表符占2个空格
vim.o.tabstop=2

-- 换行时根据代码智能地添加缩进
vim.bo.smartindent=true

-- 搜索时同时匹配多个
vim.o.incsearch=true

-- 高亮搜索(使用:noh取消高亮)
vim.o.hlsearch=true

-- 可以使用鼠标
vim.o.mouse='a'
