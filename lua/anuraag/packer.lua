vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use('wbthomason/packer.nvim')

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}


	use {
		'sainnhe/everforest',
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.everforest_enable_italic = true
			vim.cmd.colorscheme('everforest')
		end
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end
	}

	use {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	}



	use({
		"epwalsh/obsidian.nvim",
		tag = "*",  -- recommended, use latest release instead of latest commit
		requires = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("obsidian").setup()
		end,
	})


	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')


	use('neovim/nvim-lspconfig')
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-nvim-lsp')
	use('dcampos/nvim-snippy')

	use ("nvim-lua/plenary.nvim")	

	

	
end)


