local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- ~/.config/nvim/settings/lazy.lua

-- Ensure lazy.nvim is loaded
vim.opt.runtimepath:append("~/.local/share/nvim/site/pack/packer/start/lazy.nvim")

-- Your Lazy.nvim configuration (if needed)
require("lazy").setup({
    {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"},
    {"neovim/nvim-lspconfig"},
    {
      'sainnhe/everforest',
      lazy = false,
      priority = 1000,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.everforest_enable_italic = true
        vim.o.background = "dark"
        vim.cmd.colorscheme('everforest')

      vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
      vim.cmd("hi SignColumn guibg=NONE ctermbg=NONE")
      vim.cmd("hi VertSplit guibg=NONE ctermbg=NONE")
      end
    },
})


