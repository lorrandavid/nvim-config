-- vim.o.background = "dark"

local status = pcall(require, 'oh-lucy')
if (not status) then return end

vim.cmd([[colorscheme oh-lucy]])
