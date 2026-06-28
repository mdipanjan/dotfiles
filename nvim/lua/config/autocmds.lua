-- Temporary: disable Treesitter for Markdown to avoid parser error
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "markdown.mdx" },
  callback = function()
    pcall(vim.treesitter.stop)
  end,
})
