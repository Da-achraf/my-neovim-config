-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })


    use "nvim-lua/plenary.nvim"
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { { "nvim-lua/plenary.nvim" } }
    }


    use 'rose-pine/neovim'

    --use 'sainnhe/gruvbox-material'
    --use "folke/tokyonight.nvim"
    --use "EdenEast/nightfox.nvim"
    --use { "catppuccin/nvim", as = "catppuccin" }
    use "rebelot/kanagawa.nvim"

    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'

    --use {
    --"williamboman/mason.nvim",
    --"williamboman/mason-lspconfig.nvim",
    --"neovim/nvim-lspconfig",
    --}

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            { 'neovim/nvim-lspconfig' },
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    use({
        "L3MON4D3/LuaSnip",
        tag = "v2.*",
        run = "make install_jsregexp"
    })

    use "rafamadriz/friendly-snippets"

    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    use { 'preservim/nerdcommenter' }

    use { 'f-person/git-blame.nvim' }

    use { 'OmniSharp/omnisharp-vim' }

    use { 'dense-analysis/ale' }

    use { 'feline-nvim/feline.nvim' }

    use { 'nvim-tree/nvim-web-devicons' } 

use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}

end)

