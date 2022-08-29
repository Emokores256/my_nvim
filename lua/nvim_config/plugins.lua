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
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'} }
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use("windwp/nvim-ts-autotag") -- auto close and rename tags
  use("windwp/nvim-spectre") -- Spectre for find and replace
  use "numToStr/Comment.nvim" -- Easily comment out stuff
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  use "moll/vim-bbye"
  use "nvim-lualine/lualine.nvim"
  use {"akinsho/toggleterm.nvim", tag = 'v2.*'}
  use {'dsznajder/vscode-es7-javascript-react-snippets',
    run = 'npm install --frozen-lockfile'
  }

  -- Color schemes
  use "lunarvim/colorschemes"
  use "lunarvim/darkplus.nvim"
  use "lunarvim/onedarker.nvim"
  use "marko-cerovac/material.nvim"
  use 'folke/lsp-colors.nvim'
  use 'Th3Whit3Wolf/one-nvim'
  use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- hightlight matching tag in html,jsx etc.
  use("leafOfTree/vim-matchtag")
  use({
      "phaazon/hop.nvim",
      as = "hop",
      config = function()
        require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
      end,
    })

   -- Todo comments
    use({
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup({})
      end,
    })

    -- hover effect for function definitions
    use ({'lewis6991/hover.nvim', config = function()
    	require('hover').setup{
      		init = function()
		    	-- Require providers
		    	require('hover.providers.lsp')
		    	require('hover.providers.gh')
		    	require('hover.providers.man')
		    	require('hover.providers.dictionary')
      		end,
      preview_opts = {
        border = nil
      },
      title = true
    }
    
  end})

  -- jsonc file type for json - comments in json
  use("kevinoid/vim-jsonc")

  -- Dashboard
  use {'glepnir/dashboard-nvim'}

  -- WhichKey
  use("folke/which-key.nvim")

  -- Trouble - show problems in your code
    use({
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup({})
      end,
    })

  -- icons in completion
  use("onsails/lspkind-nvim")

  -- Formatting
  use("mhartington/formatter.nvim")

  -- sessions
    use({
      "rmagatti/auto-session",
      config = function()
        require("auto-session").setup({
          log_level = "info",
          auto_session_suppress_dirs = { "~/", "~/Workspace/." },
        })
      end,
    })

    use({
      "rmagatti/session-lens",
      config = function()
        require("session-lens").setup({--[[your custom config--]]
        })
      end,
    })


  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
-- use "p00f/nvim-ts-rainbow"
-- use "nvim-treesitter/playground"

  -- Comments
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Git
  use "lewis6991/gitsigns.nvim"


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
