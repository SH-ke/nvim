-- 默认不开启 nvim-tree
vim.g.load_netrw = 1
vim.g.load_netrwPlugin = 1

require("nvim-tree").setup({
  filters={
    git_ignored = false
  }
})
