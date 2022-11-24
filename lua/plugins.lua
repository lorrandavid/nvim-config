local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use { 'ellisonleao/gruvbox.nvim' }
  use 'Yazeed1s/oh-lucy.nvim'
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'onsails/lspkind-nvim' -- VSCode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a lang server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'norcalli/nvim-colorizer.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'romgrk/barbar.nvim'
  use {
    'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
end)
