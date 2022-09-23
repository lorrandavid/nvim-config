local status, indent_blankline = pcall(require, 'indent_blankline')
if (not status) then return end

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#454545 gui=nocombine]]

indent_blankline.setup {
  char = "¦",
  space_char_blankline = " ",
  space_char_highlight_list = {
    "IndentBlanklineIndent1"
  },
  show_current_context = true,
  show_current_context_start = true,
  char_highlight_list = {
    "IndentBlanklineIndent1"
  }
}
