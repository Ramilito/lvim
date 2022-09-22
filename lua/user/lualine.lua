local components = require("lvim.core.lualine.components")
local winbar = require "user.winbar"

lvim.builtin.lualine.options.disabled_filetypes = {
  winbar = {
    "help",
    "startify",
    "dashboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "neo-tree",
    "Trouble",
    "alpha",
    "lir",
    "Outline",
    "spectre_panel",
    "toggleterm",
  },
}

lvim.builtin.lualine.sections.lualine_x = {
  "overseer",
  components.diagnostics,
  components.treesitter,
  components.lsp,
  components.filetype,
}

lvim.builtin.lualine.winbar = {
  lualine_a = { winbar.get_winbar },
  lualine_b = {},
  lualine_c = {},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {}
}

lvim.builtin.lualine.inactive_winbar = {
  lualine_a = { winbar.get_winbar_inactive },
  lualine_b = {},
  lualine_c = {},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {}
}
