vim.g.mapleader = " "

-- Normal mode
vim.keymap.set("i","jj", "<Esc>")
vim.keymap.set("t","<ESC>", "<C-\\><C-n>")

---- Leader Shortcuts
-- Explorer
vim.keymap.set("n","<leader>--", vim.cmd.Ex)

-- Save
vim.keymap.set("n","<leader>w", vim.cmd.w)
vim.keymap.set("n","<leader>wq", vim.cmd.wq)

-- Terminal on left, bottom , right buffer
vim.keymap.set("n","<leader>ttl", "<cmd> vsplit term://bash<CR><C-W><S-l>")
vim.keymap.set("n","<leader>ttj", "<cmd> split term://bash<CR><C-W><S-j>")

-- Navigate buffers
vim.keymap.set("n","<leader>h", "<C-w>h")
vim.keymap.set("n","<leader>l", "<C-w>l")
vim.keymap.set("n","<leader>j", "<C-w>j")
vim.keymap.set("n","<leader>k", "<C-w>k")
vim.keymap.set("n","<leader>q", "<C-w>q")
vim.keymap.set("n","<leader>,", "<C-w><")
vim.keymap.set("n","<leader>.", "<C-w>>")

-- Split buffers
vim.keymap.set("n","<leader>hs", vim.cmd.split)
vim.keymap.set("n","<leader>vs", vim.cmd.vsplit)

-- Tabs
vim.keymap.set("n","<leader>tn", "<cmd> tabnew .<CR>")
vim.keymap.set("n","<leader>tl", vim.cmd.tabnext)
vim.keymap.set("n","<leader>th", vim.cmd.tabprevious)
vim.keymap.set("n","<leader>tq", vim.cmd.tabclose)

-- Headers and Banners
vim.keymap.set("n","<leader>f1","<cmd>Stdheader<CR>")

-- Clipboards
vim.keymap.set("v","<leader>y",'"+y')

-- Highligh and Searches
vim.keymap.set("n","<leader>hs",'<cmd>set hlsearch<CR>')
vim.keymap.set("n","<leader>nhs",'<cmd>nohlsearch<CR>')

