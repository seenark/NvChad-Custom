local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins
local formatting = b.formatting


local sources = {

  -- webdev stuff
  formatting.prettierd,
  b.diagnostics.eslint_d.with({
    diagnostics_format = '[eslint] #{m}\n(#{c})'
  }),

  -- Lua
  b.formatting.stylua,

  -- Shell
  -- b.formatting.shfmt,
  -- b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
  debug = false,
  sources = sources,
}