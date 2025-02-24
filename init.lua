local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.keymap.set("n", "<C-s>", ":update<CR>", {})
vim.keymap.set("n", "<C-d>", "<ScrollWheelDown>", {})
vim.keymap.set("n", "<C-u>", "<ScrollWheelUp>", {})
vim.opt.swapfile = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.o.statuscolumn = "%s %l %r "


local opts = {}

require("options")
require("lazy").setup("plugins")
