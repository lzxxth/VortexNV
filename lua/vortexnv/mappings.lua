local map = vim.keymap.set

map("i", "jk", "<Esc>")
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope [F]ind [F]ile" })
