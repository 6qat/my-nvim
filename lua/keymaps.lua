vim.keymap.set("i", "<C-b>", "<ESC>^i", { desc = "Move Beginning of line" })
vim.keymap.set("i", "<C-e>", "<End>", { desc = "Move End of line" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move Left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move Right" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move Down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move Up" })


vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch Window left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch Window right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch Window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch Window up" })

vim.keymap.set("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle Line number" })
vim.keymap.set("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle Relative number" })

vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "File Save" })
vim.keymap.set("n", "<C-c>", "<cmd>%y+<CR>", { desc = "File Copy whole" })
