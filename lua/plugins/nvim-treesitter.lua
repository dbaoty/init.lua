
-- nvim-treesitter.lua

return {
  "nvim-treesitter/nvim-treesitter", event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",

  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "windwp/nvim-ts-autotag",
  },

  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
          "lua", "c", "cpp", "bash", "ocaml", "python", "markdown",
          "markdown_inline",
      },

      highlight = {
        enable = true,
      },

      indent = { enable = false },

      autotag = {
        enable = true,
      },

      incremental_selection = {
        enable = true,

        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
