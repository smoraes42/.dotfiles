vim.g.mapleader = " "

vim.keymap.set("i","jj", "<Esc>")
vim.keymap.set("t","<ESC>", "<C-\\><C-n>")

vim.keymap.set("n","<leader>--", vim.cmd.Ex)
vim.keymap.set("n","<leader>w", vim.cmd.w)
vim.keymap.set("n","<leader>wq", vim.cmd.wq)
vim.keymap.set("n","<leader>t", "<cmd> vsplit term://bash<CR><C-W><S-l>")

vim.keymap.set("n","<leader>h", "<C-w>h")
vim.keymap.set("n","<leader>l", "<C-w>l")
vim.keymap.set("n","<leader>j", "<C-w>j")
vim.keymap.set("n","<leader>k", "<C-w>k")
vim.keymap.set("n","<leader>q", "<C-w>q")

vim.keymap.set("n","<leader>hs", vim.cmd.split)
vim.keymap.set("n","<leader>vs", vim.cmd.vsplit)

vim.keymap.set("n","<leader>tn", "<cmd> tabnew .<CR>")
vim.keymap.set("n","<leader>tl", vim.cmd.tabnext)
vim.keymap.set("n","<leader>th", vim.cmd.tabprevious)
vim.keymap.set("n","<leader>tq", vim.cmd.tabclose)

vim.keymap.set("n","<leader>ñ", "<cmd>quit<CR>")

vim.keymap.set("n","<leader>f1","<cmd>Stdheader<CR>")
