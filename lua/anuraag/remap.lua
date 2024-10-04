vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("v", "<leader>v", "<C-v>")
vim.keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<leader>ms", ":SelectMultipleLines ")
vim.keymap.set("n", "<leader>cms", ":SMLFromCursor ")
