return {
  "smoka7/hop.nvim",
  version = "*",
  opts = {},
  config = function()
    require("hop").setup()
    vim.keymap.set("n", "<leader>k", ":HopWord<CR>", {})
    vim.keymap.set("n", "<leader>j", ":HopLine<CR>", {})
  end,
}
