-- Save shortcuts
-- save() writes the current buffer, but if the buffer has no name (a scratch
-- buffer), it points you back to the name-first workflow instead of erroring
-- with a cryptic E32. Create files named up front with <leader>n or neo-tree 'a'.
local function save()
  if vim.api.nvim_buf_get_name(0) == "" then
    vim.notify(
      "Buffer has no name — create it first (<leader>n or neo-tree 'a')",
      vim.log.levels.WARN
    )
    return
  end
  vim.cmd("write")
end

vim.keymap.set({ "n", "i", "v" }, "<D-s>", save, { desc = "Save file" })
vim.keymap.set("n", "<leader>w", save, { desc = "Save file" })

-- New file: prompt for a path (prefilled with cwd), then open it *named* before
-- you type — the editor "New File" equivalent. Creates intermediate folders.
vim.keymap.set("n", "<leader>n", function()
  local path = vim.fn.input("New file: ", vim.fn.getcwd() .. "/", "file")
  if path ~= "" then
    vim.cmd("edit " .. vim.fn.fnameescape(path))
  end
end, { desc = "New file" })
