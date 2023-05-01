require("plugins.plugins-setup")

require("core.options")
require("core.keymaps")

-- 插件
require("plugins.lualine")
require("plugins.nvim-tree")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.comment")
require("plugins.autopairs") -- 单行注释 gcc 多行注释 gc

require("plugins.bufferline") -- buffer分割线
require("plugins.gitsigns") -- 左则git提示
require("plugins.telescope") -- 文件检索

require("plugins.markdown") -- Markdown 
