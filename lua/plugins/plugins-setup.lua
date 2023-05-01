-- 自动安装 packer

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- 保存此文件自动更新安装软件
-- 注意 PackerCompile 改成了 PackerSync
-- plugins.lua 改成了 pluagins-setup.lua，适应本地文件名
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim' -- 主题
  -- 状态栏
  use {
    'nvim-lualine/lualine.nvim', -- 状态栏
    requires = { 'kyazdani42/nvim-web-devicons', opt = true } -- 状态栏图标
  }
  -- 目录树
  use {
    'nvim-tree/nvim-tree.lua', -- 文档树
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons 图标
    },
  }
  use("christoomey/vim-tmux-navigator") -- 用 ctrl hjkl 来定位窗口
  use "nvim-treesitter/nvim-treesitter" -- 语法高亮
  use "p00f/nvim-ts-rainbow" -- 彩虹括号
  -- 自动提示
  use {
    "williamboman/mason.nvim", 
    "williamboman/mason-lspconfig.nvim", -- 这个相当于 mason.nvim 和 lspconfig 的桥梁
    "neovim/nvim-lspconfig",
  }
  -- 自动补全
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("L3MON4D3/LuaSnip") -- snippetsi引擎，不装这个自动补全会出问题
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")
  use("hrsh7th/cmp-path") -- 文件路径

  use"numToStr/Comment.nvim" -- gcc和gc注释
  use"windwp/nvim-autopairs" -- 自动补全括号
    
  use"akinsho/bufferline.nvim" -- buffer分割线
  use"lewis6991/gitsigns.nvim" -- 左则git提示

  -- 文件检索
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- MarkDown 显示
  -- install without yarn or npm
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

--  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- #deprecated python auto-import #deprecated
  -- $ pip install ropevim pynvim
  use({
    'python-rope/ropevim',
    ft = "python"
  })

  if packer_bootstrap then
    require('packer').sync()
  end
end)
