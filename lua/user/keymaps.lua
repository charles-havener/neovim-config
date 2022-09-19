-- Options used in remmapings
local opts = {noremap = true, silent = true }
local term_opts = { silent = true, buffer = 0 }

-- Shortcut for remmaping keys
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- INSERT --
keymap("i", "jk", "<ESC>", opts) -- exit insert mode

-- NORMAL --
keymap("n", "<leader>w", "<cmd>w<cr>", opts) -- save file
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts) -- toggle file explorer
keymap("n", "<c-\\>", "<cmd>ToggleTerm<cr>", opts) -- open terminal window

-- telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- telescope find files
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts) -- telescope find files
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- telescope find files
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- telescope find files

-- window moving/adjusting
keymap("n", "<C-h>", "<C-w>h", opts) -- move into window on right
keymap("n", "<C-l>", "<C-w>l", opts) -- move into window on left
keymap("n", "<C-j>", "<C-w>j", opts) -- move into window below
keymap("n", "<C-k>", "<C-w>k", opts) -- move into window above
keymap("n", "<C-Up>", ":resize +2<CR>", opts) -- increase window height 
keymap("n", "<C-Down>", ":resize -2<CR>", opts) -- decrease window height 
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts) -- decrease window width 
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts) -- increase window width 

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts) -- next buffer
keymap("n", "<S-h>", ":bprevious<CR>", opts) -- previous buffer
keymap("n", "<leader>qq", "<cmd>Bdelete<cr>", opts) -- close buffer but don't remove window

-- Move text up and down
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts) -- move line down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts) -- move line up

-- TERMINAL --
keymap("t", "<c-\\>", "<cmd>ToggleTerm<cr>", opts) -- close terminal window

-- VISUAL --
keymap("v", "<", "<gv", opts) -- stay in indent mode
keymap("v", ">", ">gv", opts) -- stay in indent mode
keymap("v", "p", '"_dP', opts) -- pasting over text keeps what was pasted rather than what was replaced for next copy action.

-- VISUAL BLOCK --
keymap("x", "J", ":move '>+1<CR>gv-gv", opts) -- move block down
keymap("x", "K", ":move '<-2<CR>gv-gv", opts) -- move block up
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts) -- move block down
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts) -- move block up
