local status_ok, gruvbox = pcall(require, "gruvbox")
if not status_ok then
    return
end

vim.o.background = "dark"

gruvbox.setup({
    contrast = "hard",
})

vim.cmd([[colorscheme gruvbox]])
