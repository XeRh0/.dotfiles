-- ~/.config/nvim/lua/settings/lsp.lua

local lspconfig = require('lspconfig')

lspconfig.clangd.setup({
  cmd = { "clangd", "--background-index" },
  filetypes = { "c", "cpp", "objc", "objcpp" },  -- Supported file types for clangd
  settings = {
    clangd = {
      checkUpdates = false,
      args = { "-Wall", "-Wpedantic", "-Wconversion", "-Wshadow",
               "-Wuninitialized", "-Wundef", "-Wnull-dereference",
               "-Wsign-compare" }  -- Global flags for all C/C++ files
    }
  },
})

-- Show all
-- vim.diagnostic.config({ virtual_lines = true })

-- Show only the current line
vim.diagnostic.config({ virtual_lines = { current_line = true } })
