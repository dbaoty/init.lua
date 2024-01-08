
-- codeium.lua

return {
  "Exafunction/codeium.vim", event = "InsertEnter",

  config = function()
    vim.g.codeium_enabled = false
  end,
}
