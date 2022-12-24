local nvimtree = require "custom.plugins.nvimtree"
local treesitter = require "custom.plugins.treesitter"

return {
  ["kyazdani42/nvim-tree.lua"] = {
    override_options = nvimtree,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = treesitter,
  },
  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        separator_style = "round",
        overriden_modules = nil,
      },
    },
  },
  ---------------------------------
  -- install
  ---------------------------------
  ["b0o/schemastore.nvim"] = {},
  -- ["glepnir/lspsaga.nvim"] = {
  --   branch = "main",
  --   config = function()
  --     local present, saga = pcall(require, "lspsaga")
  --     if present then
  --       local k = vim.keymap.set
  --       saga.init_lsp_saga {
  --         -- your configuration
  --         k("n", "gh", "<cmd>Lspsaga lsp_finder<Cr>", { silent = true }),
  --       }
  --     end
  --   end,
  -- },
  ["windwp/nvim-ts-autotag"] = {
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  ["fedepujol/move.nvim"] = {},
  -- notify
  ["MunifTanjim/nui.nvim"] = {},
  ["rcarriga/nvim-notify"] = {},
  ["folke/noice.nvim"] = {
    config = function()
      require("noice").setup {
        notify = {
          enabled = false,
        },
        presets = {
          command_palette = true,
          long_message_to_split = true,
        },
        lsp = {
          hover = {
            enabled = false,
          },
          signature = {
            enabled = false,
          },
        },
        routes = {
          {
            filter = {
              event = "msg_show",
              kind = "",
              find = "written",
            },
            opts = { skip = true },
          },
          {
            filter = {
              event = "msg_show",
              kind = "search_count",
            },
            opts = { skip = true },
          },
        },
      }
    end,
  },

  -- ["weilbith/nvim-code-action-menu"] = {
  --   config = function ()
  --     cmd = "CodeActionMenu"
  --   end
  -- }
}
