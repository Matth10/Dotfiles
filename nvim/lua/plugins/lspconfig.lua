return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Useful for debugging formatter issues
      format_notify = true,
      inlay_hints = { enabled = false },
      servers = {
        bashls = {
          filetypes = { "sh", "zsh" },
        },
        lua_ls = {
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
        biome = {},
        ruby_lsp = {
          enabled = lsp == "ruby_lsp",
        },
        rubocop = {
          enabled = formatter == "rubocop",
        },
      },
    },
  },
}
