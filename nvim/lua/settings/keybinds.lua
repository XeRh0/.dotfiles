-- ~?.config/nvim/lua/settings/indent.lua

-- indentation settings
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2


vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", ":Explore %:p:h<CR>", { desc = "Open netrw in current file dir" })

