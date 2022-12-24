local M = {}

M.general = {
  n = {
    -- Move text up and down
    ["<C-a>"] = { "<cmd> %y+ <CR>", "copy whole file" },
  },
  -- v = {
  --   ["<A-k>"] = { ":m .-2<CR>==", "Move text up" },
  --   ["<A-j>"] = { ":m .+1<CR>==", "Move text down" },
  -- },
  -- x = {
  --   ["J"] = { ":move '>+1<CR>gv-gv", "[Visual Block] Move text down" },
  --   ["K"] = { ":move '<-2<CR>gv-gv", "[Visual Block] Move text up" },
  --   ["<A-j>"] = { ":move '>+1<CR>gv-gv", "[Visual Block] Move text down" },
  --   ["<A-k>"] = { ":move '<-2<CR>gv-gv", "[Visual Block] Move text up" },
  -- },
}

M.NvimTree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle NvimTree" },
    -- ["<leader>w"] = {
    --   function()
    --     require("nvchad_ui.tabufline").close_buffer()
    --   end,
    --   "close buffer",
    -- },
  },
}

M.Lsp = {
  n = {
    -- ["gh"] = {
    --   function()
    --     vim.lsp.buf.hover()
    --   end,
    --   "lsp hover",
    -- },
    ["=="] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "lsp formatting",
    },
    ["<leader>."] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "lsp code_action",
    },
  },
}

local opts = { noremap = true, silent = true }
M.Move = {
  n = {
    ["<A-j>"] = { ":MoveLine(1) <CR>", "Move line down", opts },
    ["<A-k>"] = { ":MoveLine(-1) <CR>", "Move line down", opts },
    ["<A-h>"] = { ":MoveHChar(-1) <CR>", "Move horizontal character left", opts },
    ["<A-l>"] = { ":MoveHChar(1) <CR>", "Move horizontal character right", opts },
  },
  v = {
    ["<A-j>"] = { ":MoveBlock(1) <CR>", "Move block down", opts },
    ["<A-k>"] = { ":MoveBlock(-1) <cr>", "move block down", opts },
    ["<A-h>"] = { ":MoveHBlock(-1) <CR>", "Move block down", opts },
    ["<A-l>"] = { ":MoveHBlock(1) <CR>", "Move block down", opts },
  },
}

-- M.nvterm = {
--   t = {
--     -- toggle in terminal mode
--     ["<A-j>"] = {
--       function()
--         require("nvterm.terminal").toggle "float"
--       end,
--       "toggle floating term",
--     },
--   },
--
--   n = {
--     -- toggle in normal mode
--     ["<A-j>"] = {
--       function()
--         require("nvterm.terminal").toggle "float"
--       end,
--       "toggle floating term",
--     },
--   },
-- }

return M
