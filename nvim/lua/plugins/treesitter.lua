return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "html",
        "css",
        "bash",
        "python",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "rust",
        "toml",
      },
      highlight = {
        enable = true,
        disable = { "markdown" },
      },
      indent = {
        enable = true,
        disable = { "markdown" },
      },
    })
  end,
}
