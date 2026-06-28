return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
  ft = { "markdown" },
  build = "cd app && npm ci",
  config = function()
    vim.g.mkdp_auto_start = 0
    vim.g.mkdp_auto_close = 1

    vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<CR>", { desc = "Markdown preview" })
  end,
}
