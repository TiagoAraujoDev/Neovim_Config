return require("packer").startup(function(use)
	use("wbthomason/packer.nvim") --> packer plugin manager

	use("kyazdani42/nvim-web-devicons") --> enable icons
	use("kyazdani42/nvim-tree.lua") --> file explorer
  use('rcarriga/nvim-notify') --> Notifications
  use('nvim-lualine/lualine.nvim')
  use('romgrk/barbar.nvim')
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use('lukas-reineke/indent-blankline.nvim')

	--> colorschemes
	use("EdenEast/nightfox.nvim") 
	use("sainnhe/gruvbox-material")

	--> treesitter & treesitter modules/plugins
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) 
	use("nvim-treesitter/nvim-treesitter-textobjects") 
	use("nvim-treesitter/nvim-treesitter-refactor")
	use("p00f/nvim-ts-rainbow")
	use("JoosepAlviste/nvim-ts-context-commentstring")
  use('theHamsta/nvim-treesitter-pairs')

  -- null-ls
  use("jose-elias-alvarez/null-ls.nvim")

	--> lsp
	use("neovim/nvim-lspconfig") --> Collection of configurations for built-in LSP client
  
  -- cmp and extensions
	use("hrsh7th/nvim-cmp") --> Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") --> LSP source for nvim-cmp
  use("onsails/lspkind.nvim")
	use("hrsh7th/cmp-path") --> Autocompletion plugin
	use("hrsh7th/cmp-buffer") --> Autocompletion plugin
	use("saadparwaiz1/cmp_luasnip") --> Snippets source for nvim-cmp
  -- Snipets
	use("L3MON4D3/LuaSnip") --> Snippets engine 
  use("rafamadriz/friendly-snippets") --> Snippets repository
  
end)
