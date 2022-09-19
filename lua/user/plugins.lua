lvim.plugins = {
  { "folke/tokyonight.nvim" },
  { "stevearc/dressing.nvim" },
  { "Hoffs/omnisharp-extended-lsp.nvim" },
  { "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { "folke/zen-mode.nvim",
    config = function()
      require("user.zen").config()
    end,
  },
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
    end
  },
  { "ggandor/leap.nvim",
    config = function()
      require("leap").set_default_keymaps()
      require("leap").opts.ignore_case = true
    end,
  },
  { "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({})
    end,
  },
  { "karb94/neoscroll.nvim",
    config = function()
      require("user.neoscroll").config()
    end,
  },
  { 'sudormrfbin/cheatsheet.nvim',
    requires = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    }
  },
  { "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    setup = function()
      vim.g.indentLine_enabled = 1
      vim.g.indent_blankline = "| "
      vim.g.indent_blankline_filetype_exclude = { "help", "terminal", "dashboard" }
      vim.g.indent_blankline_buftype_exlude = { "terminal" }
      vim.g.indent_blankline_show_trailing_blankline_indent = false
      vim.g.indent_blanklline_show_first_indent_level = false
    end
  },
  { 'JoseConseco/telescope_sessions_picker.nvim',
    config = function()
      require('telescope').load_extension('sessions_picker')
    end
  },
  -- {
  --   'anuvyklack/hydra.nvim',
  --   config = function()
  --     require("user.hydra").config()
  --   end,
  -- },
  { "simrat39/rust-tools.nvim",
    config = function()
      require("user.rust_tools").config()
    end,
    ft = { "rust", "rs" },
  },
  { "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        print("copilot enter")
        require("copilot").setup {
          plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
        }
      end, 100)
    end,
  },
  { "zbirenbaum/copilot-cmp",
    after = { "copilot.lua", "nvim-cmp" },
    config = function()
      require("copilot_cmp").setup()
    end
  },
  { "github/copilot.vim"
  },
  { 'stevearc/overseer.nvim',
    config = function()
      require("user.overseer").config()
    end
  },
  { 's1n7ax/nvim-window-picker',
    tag = 'v1.*',
    config = function()
      require 'window-picker'.setup()
    end,
  },
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
    end
  },
  }
}
