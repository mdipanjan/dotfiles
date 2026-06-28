return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    wk.setup({})
    wk.add({
      { "<leader>f", group = "find" },
      { "<leader>e", desc = "File explorer" },
      { "<leader>r", group = "rename" },
      { "<leader>c", group = "code" },
      { "<leader>w", desc = "Save file" },
      { "<leader>m", group = "markdown" },
      { "<leader>g", group = "git" },
    })
  end,
}
