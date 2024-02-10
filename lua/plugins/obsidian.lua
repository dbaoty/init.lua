
-- obsidian.lua

return {
  "epwalsh/obsidian.nvim", version = "*",
  lazy = true, ft = "markdown",

  dependencies = {
    -- required
    "nvim-lua/plenary.nvim",
  },

  opts = {
    workspaces = {
    {
      name = "study",
      path = "~/backup/obsidian/vaults/study",
    },
    {
      name = "personal",
      path = "~/backup/obsidian/vaults/personal",
    },
    },

    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },

    picker = {
      name = "telescope.nvim",
      mappings = {
        new = "<C-x>",
        insert_link = "<C-l>",
      },
    },
  },
}
