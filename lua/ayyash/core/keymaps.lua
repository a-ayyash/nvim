vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk"})
keymap.set("n", "<leader>cl", ":nohl<CR>", { desc = "Clear search highlights"})


keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number"})
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number"})


keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically"})
keymap.set("n", "<leader>sn", "<C-w><C-w>", { desc = "Split window vertically"})
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally"})
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size"})
keymap.set("n", "<leader>sq", "<cmd>close<CR>", { desc = "Close current split"})
-- keymap.set("n", "<leader>s<up>", "<C-w><up>", { desc = "Navigate split up" })
-- keymap.set("n", "<leader>s<down>", "<C-w><down>", { desc = "Navigate split down" })
-- keymap.set("n", "<leader>s<left>", "<C-w><left>", { desc = "Navigate split left" })
-- keymap.set("n", "<leader>s<right>", "<C-w><right>", { desc = "Navigate split right" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab


