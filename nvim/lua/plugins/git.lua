return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local gitsigns = require("gitsigns")

    vim.api.nvim_set_hl(0, "GitSignsAddLn", { bg = "#223323" })
    vim.api.nvim_set_hl(0, "GitSignsChangeLn", { bg = "#2a2a3f" })
    vim.api.nvim_set_hl(0, "GitSignsDeleteLn", { bg = "#3a2328" })
    vim.api.nvim_set_hl(0, "GitSignsChangedeleteLn", { bg = "#332a23" })
    vim.api.nvim_set_hl(0, "GitSignsUntrackedLn", { bg = "#223323" })

    gitsigns.setup({
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },
      signs_staged = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },
      signcolumn = true,
      numhl = false,
      linehl = true,
      word_diff = false,
    })

    vim.keymap.set("n", "]c", function()
      gitsigns.nav_hunk("next")
    end, { desc = "Next git change" })

    vim.keymap.set("n", "[c", function()
      gitsigns.nav_hunk("prev")
    end, { desc = "Previous git change" })

    vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, { desc = "Preview git hunk" })
    vim.keymap.set("n", "<leader>gr", gitsigns.reset_hunk, { desc = "Reset git hunk" })
    vim.keymap.set("n", "<leader>gb", gitsigns.blame_line, { desc = "Git blame line" })
  end,
}
