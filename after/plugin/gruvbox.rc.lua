-- local status = pcall(require, 'gruvbox')
-- if (not status) then return end

-- vim.o.background = "dark"
-- vim.cmd([[colorscheme gruvbox]])

local status = pcall(require, 'kanagawa')
if (not status) then return end

vim.o.background = "dark"
vim.cmd([[colorscheme kanagawa]])
