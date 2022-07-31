local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    exe = "shellcheck",
    filetypes = { "sh" },
    -- args = { "--severity", "warning" },
  },
}
