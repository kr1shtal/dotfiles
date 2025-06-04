local key = vim.keymap

key.set("i", "kj", "<ESC>")
key.set("n", "<leader>pv", vim.cmd.Ex)

-- Cast upper and lower
key.set("n", "<leader>u", "gUe")
key.set("n", "<leader>l", "gue")

-- Remove hl search
key.set("n", "<leader>h", ":nohl<CR>")

-- Select all
key.set("n", "<c-a>", "ggVG")

-- Source file
key.set("n", "<C-x>", "<cmd>so %<CR>", { desc = "Execute the current file" })

-- Move line up/down
key.set("v", "J", ":m '>+1<CR>gv=gv")
key.set("v", "K", ":m '<-2<CR>gv=gv")

-- Yank into buffer
key.set("n", "<leader>y", "\"+y")
key.set("v", "<leader>y", "\"+y")
key.set("n", "<leader>Y", "\"+Y")

-- Increment
key.set("n", "+", "<C-a>")
key.set("n", "-", "<C-x>")

-- Window management
key.set("n", "<C-v>", "<C-w>v") -- Split vertical
key.set("n", "<C-s>", "<C-w>s") -- Split horizontal
key.set("n", "<C-=>", "<C-w>=") -- Equal window size
key.set("n", "<C-q>", "<cmd>close<CR>") -- Close window 

-- Window movement
key.set("n", "<C-h>", "<C-w>h") -- Jump right
key.set("n", "<C-k>", "<C-w>k") -- Jump up 
key.set("n", "<C-j>", "<C-w>j") -- Jump down 
key.set("n", "<C-l>", "<C-w>l") -- Jump left 

-- Window resize
key.set("n", "<M-left>", "<C-w><") -- Right 
key.set("n", "<M-right>", "<C-w>>")  -- Left
key.set("n", "<M-down>", "<C-w>+")  -- Down
key.set("n", "<M-up>", "<C-w>-")    -- Up
