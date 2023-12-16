-- Create shortcut to focus nerdtree
vim.keymap.set("n", "<leader>fn", ":NvimTreeFocus<CR>", { desc = "[F]ocus [N]erdTree" })

return {
	"nvim-tree/nvim-tree.lua",
}
