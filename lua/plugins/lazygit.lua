-- Create shortcut for lazygit
vim.keymap.set("n", "<leader>gl", ":LazyGit<CR>", { desc = "Open [G]it [L]azygit" })

-- Load Lazygit
return {
	"kdheepak/lazygit.nvim",
	requires = {
		"nvim-lua/plenary.nvim",
	},
}
