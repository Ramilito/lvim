local components = require("lvim.core.lualine.components")

lvim.builtin.lualine.sections.lualine_x = {
  "overseer",
  components.diagnostics,
  components.treesitter,
  components.lsp,
  components.filetype,
}
