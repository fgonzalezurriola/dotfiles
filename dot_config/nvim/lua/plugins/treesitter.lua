return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- Ensure these parsers are installed
    opts.ensure_installed = opts.ensure_installed or {}
    vim.list_extend(opts.ensure_installed, {
      "markdown",
      "markdown_inline",
      "go",
      "python",
      "javascript",
      "typescript",
      "rust",
      "lua",
      "bash",
      "c",
      "cpp",
      "java",
      "json",
      "yaml",
      "toml",
      "html",
      "css",
    })

    -- Enable highlighting
    opts.highlight = opts.highlight or {}
    opts.highlight.enable = true
    opts.highlight.additional_vim_regex_highlighting = { "markdown" }

    return opts
  end,
}
