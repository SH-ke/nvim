local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = true

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右侧和下侧
opt.splitright = true
opt.splitbelow = true

-- 搜索 「忽略大小写」
opt.ignorecase = true
opt.smartcase = true

-- 外观 「颜色、左侧多一列」
opt.termguicolors = true
opt.signcolumn = "yes"
-- tokyonight 主题
vim.cmd[[colorscheme tokyonight-moon]]
