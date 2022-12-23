-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "tsserver", "rust_analyzer", "dockerls", "jsonls", "yamlls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  if lsp == "jsonls" then
    -- capabilities.textDocument.completion.completionItem.snippetSupport = true
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        json = {
          schemas = require("schemastore").json.schemas {
            -- select = {
            --   ".eslintrc",
            --   "package.json",
            --   "ts"
            -- },
          },
          validate = { enable = true },
        },
      },
    }
  end
end
