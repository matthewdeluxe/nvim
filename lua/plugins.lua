vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Dracula theme
    use 'Mofiqul/dracula.nvim'

    -- File Explorer
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    -- Status Line
    use 'nvim-lualine/lualine.nvim'

    -- Fuzzy Finder
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.5', requires = { 'nvim-lua/plenary.nvim' } }

    -- LSP
    use 'neovim/nvim-lspconfig'

    -- Autocompletion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'

    -- Snippets
    use 'L3MON4D3/LuaSnip'

    -- Treesitter
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }
end)
