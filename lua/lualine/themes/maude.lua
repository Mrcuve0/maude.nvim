-- Copyright (c) 2020-2021 Mofiqul Islam
-- MIT license, see LICENSE for more details.
local u = require 'maude.utils'
local maude = {}
local colors = {}

colors = u.gen_colors()


local bg = vim.o.background == 'dark' and colors.maude_dark_alt or colors.light_3
local fg = vim.o.background == 'dark' and colors.light_2 or colors.dark_3


maude.normal = {
    a = { fg = bg, bg = colors.teal_5, gui = 'bold' },
    b = { fg = colors.teal_5, bg = vim.o.background == 'dark' and colors.dark_4 or colors.light_4 },
    c = { fg = fg, bg = bg },
}

maude.visual = {
    a = { fg = bg, bg = colors.blue_5, gui = 'bold' },
    b = { fg = colors.blue_5, bg = bg },
}

maude.inactive = {
    b = { fg = fg, bg = bg },
    a = { fg = fg, bg = bg, gui = 'bold' },
}

maude.replace = {
    a = { fg = bg, bg = colors.purple_4, gui = 'bold' },
    b = { fg = colors.purple_2, bg = colors.dark_4 },
    c = { fg = fg, bg = bg },
}

maude.insert = {
    a = { fg = bg, bg = colors.orange_4, gui = 'bold' },
    b = { fg = colors.orange_1, bg = vim.o.background == 'dark' and colors.dark_4 or fg },
    c = { fg = fg, bg = bg },
}

return maude
