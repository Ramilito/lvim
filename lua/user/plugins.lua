lvim.plugins = {
  { "stevearc/dressing.nvim" },
  { "Hoffs/omnisharp-extended-lsp.nvim" },
  { "folke/trouble.nvim", cmd = "TroubleToggle" },
  { "folke/zen-mode.nvim" },
  { "SmiteshP/nvim-navic", requires = "neovim/nvim-lspconfig" },
  { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" },
  { "j-hui/fidget.nvim" },
  { "windwp/nvim-spectre" },
  { "github/copilot.vim" },
  { 'stevearc/overseer.nvim' },
  { "simrat39/rust-tools.nvim" },
  { "kylechui/nvim-surround" },
  { "karb94/neoscroll.nvim" },
  { 'rmagatti/auto-session' },
  { "ziontee113/icon-picker.nvim" },
  { "ggandor/leap.nvim",
    config = function()
      require("leap").set_default_keymaps()
      require("leap").opts.ignore_case = true
    end },
  { 'sudormrfbin/cheatsheet.nvim',
    requires = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    } },
  { 'rmagatti/session-lens',
    requires = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' },
    config = function()
      require('session-lens').setup({ --[[your custom config--]] })
    end },
  { "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
        }
      end, 100)
    end },
  { "zbirenbaum/copilot-cmp",
    after = { "copilot.lua", "nvim-cmp" },
    config = function()
      require("copilot_cmp").setup()
    end },
  { 's1n7ax/nvim-window-picker',
    tag = 'v1.*',
    config = function()
      require 'window-picker'.setup({
        selection_chars = 'TNSERIAO',
        -- fg_color = "#c0caf5", -- text
        -- current_win_hl_color = "#c0caf5", -- current window colour
        other_win_hl_color = "#c0caf5", -- all other windows colour
      })
    end },
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
