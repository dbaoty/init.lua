
-- codeium.lua

return {
  "Exafunction/codeium.vim", event = "BufEnter",

  init = function()
    vim.g.codeium_disable_bindings = 1
  end,
}
