local status, nvim_tree = pcall(require, 'nvim-tree')
if (not status) then return end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup({
  hijack_cursor = false,
  hijack_netrw = false
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<Space>f', '<Cmd>NvimTreeToggle<CR>', opts)
