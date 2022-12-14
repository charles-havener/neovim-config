local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    -- snapshot = "july-24",
    snapshot_path = fn.stdpath "config" .. "/snapshots",
    max_jobs = 50,
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
        prompt_border = "rounded", -- Border style of prompt popups.
    },
}

-- Install your plugins here
return packer.startup(function(use)
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/plenary.nvim" -- Req for a lot of things
    use "nvim-lua/popup.nvim" -- Req for a lot of things
    use 'kyazdani42/nvim-web-devicons' -- Req for a lot of things
    
    -- File explore (nvim-tree)
    use "kyazdani42/nvim-tree.lua"

    -- Toggle terminal
    use {"akinsho/toggleterm.nvim", tag = 'v2.2.1'}

    -- Colorscheme
    use "ellisonleao/gruvbox.nvim" 

    -- Indent Blankline
    use "lukas-reineke/indent-blankline.nvim"

    -- Treesitter
    use "nvim-treesitter/nvim-treesitter"

    -- Lualine
    use "nvim-lualine/lualine.nvim"

    -- Telescope
    use "nvim-telescope/telescope.nvim"

    -- Alpha
    use "goolord/alpha-nvim"
    
    -- Autopairs
    use "windwp/nvim-autopairs"

    -- Comments
    use "numToStr/Comment.nvim"

    -- Gitsignes
    use "lewis6991/gitsigns.nvim"

    -- bbye (keep window open when file closed)
    use "moll/vim-bbye"

    -- rust
    use 'simrat39/rust-tools.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use "williamboman/mason.nvim"

    -- cmp
	use "hrsh7th/nvim-cmp" -- The completion plugin
	use "hrsh7th/cmp-buffer" -- buffer completions
	use "hrsh7th/cmp-path"  -- path completions
	use "hrsh7th/cmp-nvim-lsp" -- lsp completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "L3MON4D3/LuaSnip" -- snippet engine

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
