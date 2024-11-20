require("obsidian").setup({
        workspaces = {
          {
          name = "Personal",
          path = "~/data/obsidian/vaults/personal",
          },
          {
          name = "Whisper",
          path = "~/data/obsidian/vaults/whisper",
          },
          {
          name = "JnJ",
          path = "~/data/obsidian/vaults/jnj",
          },
      },
      ui = {
              conceallevel = 1, 
	      checkboxes = {
		      -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
		      [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
		      [">"] = { char = "", hl_group = "ObsidianRightArrow" },
		      ["x"] = { char = "", hl_group = "ObsidianDone" },
		      -- ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
		      -- ["!"] = { char = "", hl_group = "ObsidianImportant" },

	      }
      }
    })


vim.keymap.set('n', '<leader>ow', ':ObsidianWorkspace<CR>')
vim.keymap.set('n', '<leader>oc', ':ObsidianQuickSwitch<CR>', {desc = 'Change note'})
vim.keymap.set('n', '<leader>os', ':ObsidianSearch<CR>', {desc = 'Search in notes'})
vim.keymap.set('n', '<leader>oo', ':ObsidianFollowLink vsplit<CR>', {desc = 'Open Link'})
vim.keymap.set('n', '<leader>on', ':ObsidianNew<CR>', {desc = 'New note'}) 
vim.keymap.set('v', '<leader>ol', ':ObsidianLinkNew<CR>', {desc = 'Link to and create a note'})
vim.keymap.set('n', '<leader>ot', ':ObsidianTags<CR>', {desc = 'Link to and create a note'})
