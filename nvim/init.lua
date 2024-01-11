require("v3n0m")
vim.opt.termguicolors = true
vim.cmd("colorscheme habamax")
vim.cmd("set autochdir")
vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
