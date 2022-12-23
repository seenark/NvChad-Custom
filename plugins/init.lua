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
  -- ["MunifTanjim/prettier.nvim"] = {
  --   config = function()
  --     local null_ls = require "null-ls"
  --
  --     local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
  --     local event = "BufWritePre" -- or "BufWritePost"
  --     local async = event == "BufWritePost"
  --
  --     null_ls.setup {
  --       on_attach = function(client, bufnr)
  --         if client.supports_method "textDocument/formatting" then
  --           vim.keymap.set("n", "<Leader>f", function()
  --             vim.lsp.buf.format { bufnr = vim.api.nvim_get_current_buf() }
  --           end, { buffer = bufnr, desc = "[lsp] format" })
  --
  --           -- format on save
  --           vim.api.nvim_clear_autocmds { buffer = bufnr, group = group }
  --           vim.api.nvim_create_autocmd(event, {
  --             buffer = bufnr,
  --             group = group,
  --             callback = function()
  --               vim.lsp.buf.format { bufnr = bufnr, async = async }
  --             end,
  --             desc = "[lsp] format on save",
  --           })
  --         end
  --
  --         if client.supports_method "textDocument/rangeFormatting" then
  --           vim.keymap.set("x", "<Leader>f", function()
  --             vim.lsp.buf.format { bufnr = vim.api.nvim_get_current_buf() }
  --           end, { buffer = bufnr, desc = "[lsp] format" })
  --         end
  --       end,
  --     }
  --   end,
  -- },
}
