return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				require("none-ls.code_actions.eslint").with({
					condition = function(utils)
						return utils.root_has_file_matches("eslintrc")
					end,
				}),
				null_ls.builtins.formatting.prettier,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
