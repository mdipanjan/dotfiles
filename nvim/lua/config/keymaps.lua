-- Save shortcuts
vim.keymap.set({ "n", "i", "v" }, "<D-s>", function()
  vim.cmd("write")
end, { desc = "Save file" })

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
