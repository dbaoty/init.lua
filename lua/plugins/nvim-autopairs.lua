
-- nvim-autopairs.lua

return {
  "windwp/nvim-autopairs", event = "InsertEnter",
  
  config = function()
    local npairs = require("nvim-autopairs")
    local rule = require("nvim-autopairs.rule")

    npairs.setup({
      check_ts = true,
      ts_config = {
        lua = { "string" },
      }
    })

    local ts_conds = require("nvim-autopairs.ts-conds")

    npairs.add_rules({
      rule("%", "%", "lua")
        :with_pair(ts_conds.is_ts_node({ "string", "comment" })),
      rule("$", "$", "lua")
        :with_pair(ts_conds.is_not_ts_node({ "function" })),
    })
  end
}
