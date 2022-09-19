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
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- telescope find files
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts) -- telescope find files
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- telescope find files
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- telescope find files


-- TERMINAL --
keymap("t", "<c-\\>", "<cmd>ToggleTerm<cr>", opts) -- close terminal window

-- VISUAL --
keymap("v", "<", "<gv", opts) -- stay in indent mode
keymap("v", ">", ">gv", opts) -- stay in indent mode
keymap("v", "p", '"_dP', opts) -- pasting over text keeps what was pasted rather than what was replaced for next copy action.
