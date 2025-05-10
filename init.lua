-- Basic Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.cursorline = true

-- Leader key
vim.g.mapleader = " "

-- Plugin Setup (Packer)
require('plugins')

-- Lualine setup
require('lualine').setup {
  options = {
    theme = 'dracula'
  }
}

-- Nvim-tree setup
require("nvim-tree").setup()

-- Treesitter
require'nvim-treesitter.configs'.setup {
  highlight = { enable = true },
}

local lspconfig = require('lspconfig')
local configs = require('lspconfig.configs')

if not configs.ts_ls then
  configs.ts_ls = {
    default_config = {
      cmd = { "typescript-language-server", "--stdio" },
      filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx" },
      root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
      settings = {},
    },
  }
end

lspconfig.ts_ls.setup {}

-- Python
lspconfig.pylsp.setup {}

-- Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {})
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {})

-- Dracula Colorscheme
vim.cmd[[colorscheme dracula]]
