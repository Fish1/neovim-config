local Terminal = require("toggleterm.terminal").Terminal
local lazydocker = Terminal:new({
  cmd = "lazydocker",
  hidden = true,
})
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>dd", function()
  lazydocker:toggle()
end, { desc = "Lazy Docker" })

vim.keymap.set("n", "<leader>dcu", function()
  local path = vim.fn.expand("%")
  local cmdstr = "docker compose -f " .. path .. " up -d 2>&1"
  local cmd, err = io.popen(cmdstr)
  print(cmdstr)
  if not cmd then
    print("Error: " .. err)
  else
    local output = cmd:read("*a")
    print("Status: " .. output)
    cmd:close()
  end
end, { desc = "Docker Compose Up" })

vim.keymap.set("n", "<leader>sd", function()
  print("Starting Docker")
end, { desc = "Start Docker Service" })
