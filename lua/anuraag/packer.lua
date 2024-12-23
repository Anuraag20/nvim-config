vim.cmd [[packadd packer.nvim]]

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


return require('packer').startup(function(use)
	-- Packer can manage itself
	use('wbthomason/packer.nvim')

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use { "catppuccin/nvim", as = "catppuccin" }
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
	})
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		config = function()
			require("neo-tree").setup({})
		end

	}

	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')


	use('neovim/nvim-lspconfig')
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-nvim-lsp')
	use('dcampos/nvim-snippy')

	use ('mfussenegger/nvim-dap')
	use ('mfussenegger/nvim-dap-python')
	use('tweekmonster/django-plus.vim')
	
end)


