local status, nvim_tree = pcall(require, 'nvim-tree')
if (not status) then return end

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

nvim_tree.setup({
  hijack_cursor = false,
  hijack_netrw = false,
  open_on_setup = true,
  view = {
    side = "left",
    width = 30,
    mappings = {
      list = {
        { key = 'L', cb = tree_cb('cd') },
        { key = 'h', cb = tree_cb('close_node') },
        { key = 'i', cb = tree_cb('preview') },
        { key = 'R', cb = tree_cb('refresh') },
        { key = 'c', cb = tree_cb('create') },
        { key = 'D', cb = tree_cb('remove') },
        { key = 'r', cb = tree_cb('rename') },
        { key = 'd', cb = tree_cb('cut') },
        { key = 'y', cb = tree_cb('copy') },
        { key = 'p', cb = tree_cb('paste') },
        { key = 'gyn', cb = tree_cb('copy_name') },
        { key = 'gyp', cb = tree_cb('copy_path') },
        {
          key = 'gya',
          cb = tree_cb('copy_absolute_path'),
        },
        { key = 'H', cb = tree_cb('dir_up') },
        { key = 's', cb = tree_cb('system_open') },
        { key = 'q', cb = tree_cb('close') },
      }
    }
  },
  actions = {
    open_file = {
      resize_window = true
    }
  }
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-b>', '<Cmd>NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<C-e>', '<Cmd>NvimTreeFocus<CR>', opts)
