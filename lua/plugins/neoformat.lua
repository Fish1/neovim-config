-- Run Neoformat on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	command = "Neoformat",
})

-- Load Neoformat
return {
	"sbdchd/neoformat",
}
