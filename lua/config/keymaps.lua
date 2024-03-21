local keymap = vim.keymap

local opts = { noremap = true, silent = false }

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", opts)

-- Pane and Window Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right
keymap.set("t", "<C-h>", "[[<Cmd>wincmd h<CR>]]", opts) -- Navigate Left
keymap.set("t", "<C-j>", "[[<Cmd>wincmd j<CR>]]", opts) -- Navigate Down
keymap.set("t", "<C-k>", "[[<Cmd>wincmd k<CR>]]", opts) -- Navigate Up
keymap.set("t", "<C-l>", "[[<Cmd>wincmd l<CR>]]", opts) -- Navigate Right
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts) -- Navigate Left
keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts) -- Navigate Down
keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts) -- Navigate Up
keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts) -- Navigate Right
keymap.set("i", "jk", "<Esc>", opts)

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimize

-- Indenting
keymap.set("v", "<", "<gv") -- Shift Indentation to Left
keymap.set("v", ">", ">gv") -- Shift Indentation to Right

-- Show Full File-Path
keymap.set("n", "<leader>pa", ":echo expand('%:p')<CR>", opts) -- Show Full File Path

-- Comments
keymap.set("n", "<C-_>", "gtc", { noremap = false })
keymap.set("v", "<C-_>", "goc", { noremap = false })
