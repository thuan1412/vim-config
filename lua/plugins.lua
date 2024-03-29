local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

--- Check if a file or directory exists in this path
local function require_plugin(plugin)
    local plugin_prefix = fn.stdpath("data") .. "/site/pack/packer/opt/"

    local plugin_path = plugin_prefix .. plugin .. "/"
    --	print('test '..plugin_path)
    local ok, err, code = os.rename(plugin_path, plugin_path)
    if not ok then
        if code == 13 then
            -- Permission denied, but it exists
            return true
        end
    end
    --	print(ok, err, code)
    if ok then vim.cmd("packadd " .. plugin) end
    return ok, err, code
end

local function isMac()
    local os_name = fn.system('uname'):gsub("\n", "")
    if os_name == 'Darwin' then return true end
    return false
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup({
	function(use)
		 -- Packer can manage itself as an optional plugin
		use "wbthomason/packer.nvim"

		-- TODO: refactor all of this (for now it works, but yes I know it could be wrapped in a simpler )

		-- explorer
		use {
      "kyazdani42/nvim-tree.lua", opt = true,
      requires = 'kyazdani42/nvim-web-devicons',
    }

    -- Treesitte
    use {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
      -- setup = function()
      --    require("utils").packer_lazy_load "nvim-treesitter.nvim"
      -- end,
    }
    -- use 'nvim-treesitter/nvim-treesitter-textobjects'
    -- use 'nvim-treesitter/nvim-treesitter-refactor'
    use {'nvim-treesitter/playground'} -- playground
    use {"windwp/nvim-ts-autotag"} -- ts auto tag
    use 'JoosepAlviste/nvim-ts-context-commentstring' -- ts comment string

    -- Coc
    use {'neoclide/coc.nvim', branch = 'release'}
    use { 'rodrigore/coc-tailwind-intellisense' }

		-- icon
    use {"kyazdani42/nvim-web-devicons"}

    -- Status Line and Bufferline
    use {"glepnir/galaxyline.nvim"}
    use {"romgrk/barbar.nvim"}

		-- lsp
		-- use {"neovim/nvim-lspconfig"}
		-- use {"glepnir/lspsaga.nvim"}
		-- use {"kabouzeid/nvim-lspinstall"}
		-- use {"nvim-lua/lsp-status.nvim"}
		-- use {"RishabhRD/popfix"}
		-- use {"RishabhRD/nvim-lsputils"}

		-- Telescope
		use {"nvim-lua/popup.nvim"}
		use {"nvim-lua/plenary.nvim"}
		use {"nvim-telescope/telescope.nvim"}
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- fzf
    use { 'junegunn/fzf' }
    use { 'junegunn/fzf.vim' }
    use { 'antoinemadec/coc-fzf' }

    -- Autocomplete
    use {'Shougo/deoplete.nvim'}
    use {'Shougo/neosnippet.vim'}
    use {'Shougo/neosnippet-snippets'}
    use {'honza/vim-snippets'}

    -- tpope -- TODO: replace with lua
    use 'tpope/vim-abolish'
    use 'tpope/vim-repeat'
    use 'tpope/vim-speeddating'
    use 'tpope/vim-surround'
    use 'tpope/vim-unimpaired'
    use 'tpope/vim-dadbod'
    use 'kristijanhusak/vim-dadbod-completion'
    use 'kristijanhusak/vim-dadbod-ui'
    use 'junegunn/vim-easy-align'

    -- auto-pairs
    use 'jiangmiao/auto-pairs'

    -- theme
    use {'dracula/vim', as = 'dracula'}
		use {'rafi/awesome-vim-colorschemes'}
    use 'folke/tokyonight.nvim'
    use 'liuchengxu/space-vim-dark'
    use { 'phanviet/vim-monokai-pro' }
    use 'projekt0n/github-nvim-theme'

		-- code format
		use {'sbdchd/neoformat'}

		-- color
    use "norcalli/nvim-colorizer.lua"

		-- react

    -- prisma
    use "pantharshit00/vim-prisma"

		-- comment
		use {"terrortylor/nvim-comment"}

		-- which-key
		use {"folke/which-key.nvim"}

    -- Git
    use {
      "lewis6991/gitsigns.nvim",
    }
    use {'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim'}
    use 'f-person/git-blame.nvim'

    -- git diff view
    use 'sindrets/diffview.nvim'

    -- debug lua
    use 'jbyuki/one-small-step-for-vimkind'
    use 'mfussenegger/nvim-dap'

    -- hightlight line indent
    use "lukas-reineke/indent-blankline.nvim"

    -- outline
    use "liuchengxu/vista.vim"

    -- spell checker
    use "kamykn/spelunker.vim"

    use 'RishabhRD/popfix'
    use 'RishabhRD/nvim-cheat.sh'
    -- marks
    use { 'kshenoy/vim-signature' }

    -- go
    -- use { 'fatih/vim-go' }

		require_plugin("nvim-tree.lua")
		require_plugin("tpope/vim-abolish")
	end
})
