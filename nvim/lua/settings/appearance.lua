-- ~/.config/nvim/lua/settings/appearance.lua

-- color column
vim.opt.colorcolumn = "81"

-- current line highlight
vim.opt.cursorline = true

-- dark background + transparent
vim.opt.background = "dark"
vim.api.nvim_set_hl( 0, "Normal", { ctermbg = "NONE", bg = "NONE" })

-- line numbering + relative numbering
vim.opt.number = true
vim.opt.relativenumber = true
