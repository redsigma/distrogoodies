return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        ensure_installed = {
          "bash",
          "c",
          "cpp",
          "go",
          "ruby",
          "cmake",
          "dockerfile",
          "rego",
          "yaml",
          "markdown",
          "diff",
          "javascript",
          "typescript",
          "json",
          "json5",
          "lua",
          "jinja",
          "jinja_inline",
          "git_config",
          "gitcommit",
          "gitignore",
        },
        highlight = { enable = true },
        indent = { enable = false },
      })
    end
  }
}
