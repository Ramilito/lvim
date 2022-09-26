lvim.plugins = {
  { "stevearc/dressing.nvim" },
  { "Hoffs/omnisharp-extended-lsp.nvim" },
  { "folke/trouble.nvim",
    cmd = "TroubleToggle" },
  { "folke/zen-mode.nvim",
    config = function()
      require("user.zen").config()
    end },
  -- {
  --   'kevinhwang91/nvim-ufo',
  --   requires = 'kevinhwang91/promise-async',
  --   config = function()
  --     require("user.ufo").config()
  --   end,
  -- },
  { "ziontee113/icon-picker.nvim",
    config = function()
      require("icon-picker")
    end },
  { "ggandor/leap.nvim",
    config = function()
      require("leap").set_default_keymaps()
      require("leap").opts.ignore_case = true
    end },
  { "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({})
    end },
  { "karb94/neoscroll.nvim",
    config = function()
      require("user.neoscroll").config()
    end },
  { 'sudormrfbin/cheatsheet.nvim',
    requires = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    } },
  -- {
  --   'anuvyklack/hydra.nvim',
  --   config = function()
  --     require("user.hydra").config()
  --   end,
  -- },
  { 'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
        log_level = "error",
        pre_save_cmds = { "lua require'neo-tree'.setup()", "tabdo NeoTreeClose" },
        auto_session_suppress_dirs = { "~/", "/" },
        cwd_change_handling = {
          restore_upcoming_session = true,
          pre_cwd_changed_hook = nil, -- lua function hook. This is called after auto_session code runs for the `DirChangedPre` autocmd
          post_cwd_changed_hook = nil, -- lua function hook. This is called after auto_session code runs for the `DirChanged` autocmd
        }
      }
    end },
  { 'rmagatti/session-lens',
    requires = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' },
    config = function()
      require('session-lens').setup({ --[[your custom config--]] })
    end },
  { "simrat39/rust-tools.nvim",
    config = function()
      require("user.rust_tools").config()
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
  { "github/copilot.vim" },
  { 'stevearc/overseer.nvim',
    config = function()
      require("user.overseer").config()
    end },
  { 's1n7ax/nvim-window-picker',
    tag = 'v1.*',
    config = function()
      require 'window-picker'.setup()
    end },
  { "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "s1n7ax/nvim-window-picker"
    },
    config = function()
      require("user.neo-tree").config()
    end },
  { "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig",
    config = function()
      require("user.navic").config()
    end },
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
}
