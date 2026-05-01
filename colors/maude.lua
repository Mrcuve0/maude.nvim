vim.cmd("hi clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "maude"

if vim.o.background == 'dark' then
    local maude_dark = require'maude.dark'
    maude_dark.set()
else
    local maude_light = require'maude.light'
    maude_light.set()
end
