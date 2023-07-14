-- Track the engine.
-- Plugin 'SirVer/ultisnips'

-- -- Snippets are separated from the engine. Add this if you want them:
-- Plugin 'honza/vim-snippets'

local global = vim.g
-- Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
-- - https://github.com/Valloric/YouCompleteMe
-- - https://github.com/nvim-lua/completion-nvim
global.UltiSnipsExpandTrigger = "<leader><tab>"
global.UltiSnipsJumpForwardTrigger = "<c-b>"
global.UltiSnipsJumpBackwardTrigger = "<c-z>"

-- If you want :UltiSnipsEdit to split your window.
global.UltiSnipsEditSplit = "vertical"
