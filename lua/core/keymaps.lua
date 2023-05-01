vim.g.mapleader = " "

local keymap = vim.keymap

--- --- --- --- 插入模式 --- --- --- --- 
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "<C-s>", "<ESC>:w<CR>")

--- --- --- --- 视觉模式 --- --- --- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--- --- --- --- 正常模式 --- --- --- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

--- --- --- --- 插件 --- --- --- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- 文件侧边栏
-- 切换buffer
keymap.set("n","<leader>l",":bnext<CR>")
keymap.set("n","<leader>h",":bprevious<CR>")
-- 删除buffer
keymap.set("n", "<C-w>", ":bdelete %<CR>") -- 删除当前 buffer
keymap.set("n", "<leader>bl", ":BufferLineCloseRight<CR>") -- 所有 右侧 buffer
keymap.set("n", "<leader>bh", ":BufferLineCloseLeft<CR>") -- 所有 左侧 buffer
