local options = {
    backup = false, -- creates a backup file
    clipboard = "unnamedplus", -- access to system clipboard
    cmdheight = 2, -- more space in neovim command line
    fileencoding = "utf-8", -- encoding writte to a file
    hlsearch = true, -- highlight all matchesof prev search pattern
    ignorecase = true, -- ignore case in search patters
    mouse = "a", -- allow mouse use
    pumheight = 10, -- popup menu height
    showtabline = 0, -- always show tabs
    smartcase = true, -- smart case
    smartindent = true, -- smart indent
    splitbelow = true, -- horizontal splits always below current
    splitright = true, -- vertical splits always right of current.
    termguicolors = true, -- set term gui colors
    timeoutlen = 1000, -- time to wait for a mapped seq to complete
    undofile = true, -- enable persistent undo
    updatetime = 100, -- faster completion
    writebackup = false, -- can't edit files being used elsewhere
    expandtab = true, -- convert tabs to spaces
    shiftwidth = 4, -- size of idents
    tabstop = 4, -- insert 4 spaecs for tab
    cursorline = true, -- highlight the current line,
    number = true, -- show numbers on lines
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
