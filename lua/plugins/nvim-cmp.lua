
-- nvim-cmp.lua

return {
  "hrsh7th/nvim-cmp", event = "BufReadPre",

  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "saadparwaiz1/cmp_luasnip",
  },

  config = function()
    local cmp = require("cmp")

    cmp.setup {
      experimental = {
        ghost_text = true,
      },

      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },

      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),

      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = "buffer" },
      }),
    }

    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("lspconfig")["lua_ls"].setup({
      capabilitiesabilities = capabilities
    })
  end,
}
