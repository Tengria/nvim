vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>g", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fr", ":Telescope registers<CR>")
vim.keymap.set("n", "<leader>fc", ":Telescope colorscheme<CR>")
vim.keymap.set("n", "<leader>fl", ":Telescope oldfiles<CR>")
vim.keymap.set("n", ">", ">>")
vim.keymap.set("n", "<", "<<")
vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set("", "s", '"+')
vim.keymap.set("", "<C-l>", vim.cmd.bnext)
vim.keymap.set("", "<C-h>", vim.cmd.bprev)
vim.keymap.set("", "<tab>", ":fold<CR>")
vim.keymap.set("", "q:", "")
vim.keymap.set("n", "<leader>e", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "e", "A")
