return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    require("mini.pairs").setup({
      mappings = {
        ["("] = { action = "open", pair = "()" },
        ["["] = { action = "open", pair = "[]" },
        ["{"] = { action = "open", pair = "{}" },
        [")"] = { action = "close", pair = "()" },
        ["]"] = { action = "close", pair = "[]" },
        ["}"] = { action = "close", pair = "{}" },
      },
    })
    require("mini.animate").setup({
      scroll = {
        enable = false,
      },
    })
    require("mini.surround").setup()
    require("mini.completion").setup()
    require("mini.move").setup()
    require("mini.indentscope").setup()
    require("mini.fuzzy").setup()
  end,
}
