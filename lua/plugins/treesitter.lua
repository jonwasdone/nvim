return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    auto_install = true,
    ensure_installed = {
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "typescript",
      "tsx",
      "elixir",
      "heex",
      "javascript",
      "html",
      "c_sharp",
      "css",
      "json",
      "sql",
    },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(LazyPlug, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
