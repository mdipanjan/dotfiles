return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        markdown = { "prettier" },
        python = { "black" },
        go = { "goimports", "gofmt" },
        rust = { "rustfmt" },
      },
      format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
      },
    })

    vim.keymap.set("n", "<leader>cf", function()
      require("conform").format({ async = true, lsp_format = "fallback" })
    end, { desc = "Format file" })
  end,
}
