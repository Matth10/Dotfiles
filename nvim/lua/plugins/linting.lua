return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      -- for language support
      -- @see https://biomejs.dev/internals/language-support/
      formatters_by_ft = {
        ruby = { "rubocop" },
        lua = { "stylua" },
        javascript = { "biome", "prettierd", stop_after_first = true },
        ["javascriptreact"] = { "biome", "prettierd", stop_after_first = true },
        ["typescript"] = { "biome", "prettierd", stop_after_first = true },
        ["typescriptreact"] = { "biome", "prettierd", stop_after_first = true },
        ["json"] = { "biome", "prettierd", stop_after_first = true },
        ["graphql"] = { "prettierd", stop_after_first = true },
      },
      -- Customize formatters
      formatters = {
        rubocop = { "--server", "--auto-correct-all", "--stderr", "--force-exclusion", "--stdin", "$FILENAME" },
      },
    },
  },
}
