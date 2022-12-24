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
  ["windwp/nvim-ts-autotag"] = {
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  ["fedepujol/move.nvim"] = {}, -- move text by line or by block
  ["weilbith/nvim-code-action-menu"] = {} -- code action in floating window, yes it colored -> key mapping is set in mapping file
}
