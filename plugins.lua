local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "p00f/clangd_extensions.nvim",
  },

  {
    "vijaymarupudi/nvim-fzf"
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },

  -- c#
  -- {
  --   "OmniSharp/omnisharp-vim",
  -- },
  -- {
  --   "OmniSharp/omnisharp-roslyn",
  -- },
  {
    "Hoffs/omnisharp-extended-lsp.nvim",
  },

  {
    "ThePrimeagen/harpoon"
  },

  --["folke/which-key.nvim"] = {
  --  disable = false,
  --  config = function()
  --    require("plugins.configs.whichkey")
  --    local present, wk = pcall(require, "which-key")
  --    if not present then
  --      return
  --    end
  --    wk.register(
  --      {
  --        -- add group
  --        ["<leader>"] = {
  --          h = {name="harpoon"},
  --          --f = {name="+file"},
  --          --b = {name="+buffer"},
  --          --g = {name="+git"},
  --          --s = {name="+shell"},
  --        }
  --      }
  --    )
  --  end,
  --  setup = function()
  --    require("core.utils").load_mappings "whichkey"
  --  end,
  --},
  
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

}



return plugins
