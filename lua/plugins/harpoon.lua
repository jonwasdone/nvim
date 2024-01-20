return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({})

    vim.keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Open harpoon window" })

    vim.keymap.set("n", "<C-a>", function()
      harpoon:list():append()
    end, { desc = "Add current file to harpoon" })
    vim.keymap.set("n", "<C-d>", function()
      harpoon:list():remove()
    end, { desc = "Remove current file from harpoon" })
  end,
}
