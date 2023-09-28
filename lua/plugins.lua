-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'rstacruz/vim-closer'
    use 'preservim/vim-markdown'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1', -- or branch = '0.1.x'
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use{
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use('tpope/vim-fugitive')
    use('tpope/vim-surround')
    use('alvan/vim-closetag')
    use('vim-scripts/ReplaceWithRegister')

    use('numToStr/Comment.nvim')
    use('nvim-tree/nvim-tree.lua')
    use('nvim-lualine/lualine.nvim')

    use('christoomey/vim-tmux-navigator')

    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}

end)
