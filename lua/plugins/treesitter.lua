
-- treesitter.lua

return {
  "nvim-treesitter/nvim-treesitter", event = "BufReadPost", build = ":TSUpdate",
  dependencies = { "nvim-treesitter/nvim-treesitter-refactor" },

  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = "all",
      sync_install = true,
      auto_install = false,

      autopairs = { enable = true },
      autotag = { enable = true },
      indent = { enable = true },

      highlight = {
        enable = true,
      },

      refactor = {
        highlight_definitions = {
          enable = true,
          clear_on_cursor_move = true,
        },

        highlight_current_scope = { enable = false },
      },
    })
  end,
}
