local M = {}

M.general = {
  n = {
    ["<C-a>"] = { "<cmd> %y+ <CR>", "copy whole file" },
  },
}

M.NvimTree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle NvimTree" },
    ["<leader>w"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
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

M.nvterm = {
  t = {
    -- toggle in terminal mode
    ["<A-j>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    }
  },

  n = {
    -- toggle in normal mode
    ["<A-j>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  }
}

return M
