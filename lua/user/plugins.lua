lvim.plugins = {
  { "stevearc/dressing.nvim" },
  { "Hoffs/omnisharp-extended-lsp.nvim" },
  { "folke/zen-mode.nvim" },
  { "j-hui/fidget.nvim" },
  { "windwp/nvim-spectre" },
  { "github/copilot.vim" },
  { 'stevearc/overseer.nvim' },
  { "simrat39/rust-tools.nvim" },
  { "kylechui/nvim-surround" },
  { "karb94/neoscroll.nvim" },
  { 'rmagatti/auto-session' },
  { "ziontee113/icon-picker.nvim" },
  { "ggandor/leap.nvim" },
  { "folke/trouble.nvim", cmd = "TroubleToggle" },
  { "zbirenbaum/copilot.lua", event = { "VimEnter" } },
  { "zbirenbaum/copilot-cmp", after = { "copilot.lua", "nvim-cmp" } },
  { 's1n7ax/nvim-window-picker', tag = 'v1.*' },
  { "SmiteshP/nvim-navic", requires = "neovim/nvim-lspconfig" },
  { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" },
  { 'sudormrfbin/cheatsheet.nvim',
    requires = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    } },
  { 'rmagatti/session-lens',
    requires = {
      'rmagatti/auto-session',
      'nvim-telescope/telescope.nvim'
    },
  },
  { "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "s1n7ax/nvim-window-picker"
    }
  },

  -- {
  --   'anuvyklack/hydra.nvim',
  --   config = function()
  --     require("user.hydra").config()
  --   end,
  -- },

  -- not working
  -- { "nvim-treesitter/nvim-treesitter-context",
  --   config = function()
  --     require("treesitter-context").setup()
  --   end,
  -- },
  -- { "sunjon/shade.nvim",
  --   config = function()
  --     require("shade").setup()
  --   end,
  -- }
  -- {
  --   'kevinhwang91/nvim-ufo',
  --   requires = 'kevinhwang91/promise-async',
  --   config = function()
  --     require("user.ufo").config()
  --   end,
  -- },

}
