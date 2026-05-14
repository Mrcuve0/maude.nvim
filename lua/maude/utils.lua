local M = {}

local nvim_set_hl = function(ns_id)
    return function(name, val)
        vim.api.nvim_set_hl(ns_id, name, val)
    end
end

M.highlight = nvim_set_hl(0)

M.gen_colors = function()
    local colors
    if vim.o.background == 'dark' then
        colors = {
            -- Done
            blue_1 = '#7CACE8',
            blue_2 = '#67A0E4',
            blue_3 = '#5292E0',
            blue_4 = '#3C84DD',
            blue_5 = '#2677D9',
            blue_6 = '#226BC3',
            blue_7 = '#1F5FAD',

            -- Done
            brown_1 = '#AA9B7D',
            brown_2 = '#A29271',
            brown_3 = '#998864',
            brown_4 = '#8D7C5C',
            brown_5 = '#807153',

            -- Done
            chameleon_3 = '#FFA000',

            -- Done
            dark_1 = '#63635D', -- comments
            dark_2 = '#575752',
            dark_3 = '#4A4A46', -- normal text
            dark_4 = '#3E3E3A',
            dark_5 = '#32322F',
            dark_6 = '#252523',
            dark_7 = '#191917',

            -- Done

            green_1 = '#B0DCC0',
            green_2 = '#A4D7B7',
            green_3 = '#7DC698',
            green_4 = '#58B67A',
            green_5 = '#429661',
            green_6 = '#317048',
            green_7 = '#214B30',

            -- Done
            maude_dark = '#1A1A18',
            maude_dark_alt = '#2C2C28',
            maude_popup = '#3D3D38',
            maude_tree = '#4E4E48',

            -- Done
            light_1 = '#FAF9F5',
            light_2 = '#ECE9E2',
            light_3 = '#DAD3C6',
            light_4 = '#CEC5B3',
            light_5 = '#C1B6A0',
            light_6 = '#B5A88D',
            light_7 = '#A99A7B',

            -- Done
            orange_1 = '#F4845F',
            orange_2 = '#F27146',
            orange_3 = '#F16030',
            orange_4 = '#EF4F19',
            orange_5 = '#E14410',

            -- Done
            purple_1 = '#C49BE8',
            purple_2 = '#B785E3',
            purple_3 = '#AA6EDE',
            purple_4 = '#9D58D9',
            purple_5 = '#8F41D4',

            -- Done
            red_1 = '#F28B82',
            red_2 = '#EF756A',
            red_3 = '#ED5F52',
            red_4 = '#EA493A',
            red_5 = '#E83322',

            -- Done
            teal_1 = '#7CE8D4',
            teal_2 = '#52E0C6',
            teal_3 = '#26D9B8',
            teal_4 = '#1FAD93',
            teal_5 = '#17826E',

            -- Done (maude)
            violet_2 = '#7D8AC7',
            violet_3 = '#6362C8',
            violet_4 = '#4E57BA',

            -- Done
            yellow_1 = '#E8C47C',
            yellow_2 = '#E4BB67',
            yellow_3 = '#E0B152',
            yellow_4 = '#DDA73C',
            yellow_5 = '#D99D26',
            yellow_6 = '#C38E22',

            -- Done (maude)
            split_and_borders = '#2E2E32',
            menu_selected = '#4A4A4D',
        }
    else
        colors = {
            -- Done
            blue_1 = '#7CACE8',
            blue_2 = '#67A0E4',
            blue_3 = '#5292E0',
            blue_4 = '#3C84DD',
            blue_5 = '#2677D9',
            blue_6 = '#226BC3',
            blue_7 = '#1F5FAD',

            -- Done
            brown_1 = '#AA9B7D',
            brown_2 = '#A29271',
            brown_3 = '#998864',
            brown_4 = '#8D7C5C',
            brown_5 = '#807153',

            -- Done
            chameleon_3 = '#F39100',

            -- Done
            dark_1 = '#63635D', -- comments
            dark_2 = '#575752',
            dark_3 = '#4A4A46', -- normal text
            dark_4 = '#3E3E3A',
            dark_5 = '#32322F',
            dark_6 = '#252523',
            dark_7 = '#191917',

            -- Done
            green_1 = '#B0DCC0',
            green_2 = '#A4D7B7',
            green_3 = '#7DC698',
            green_4 = '#58B67A',
            green_5 = '#429661',
            green_6 = '#317048',
            green_7 = '#214B30',

            -- Done
            light_1 = '#FAF9F5',
            light_2 = '#ECE9E2',
            light_3 = '#DAD3C6',
            light_4 = '#CEC5B3',
            light_5 = '#C1B6A0',
            light_6 = '#B5A88D',
            light_7 = '#A99A7B',

            -- Done
            orange_1 = '#F4845F',
            orange_2 = '#F27146',
            orange_3 = '#F16030',
            orange_4 = '#EF4F19',
            orange_5 = '#E14410',

            -- Done
            purple_1 = '#C49BE8',
            purple_2 = '#B785E3',
            purple_3 = '#AA6EDE',
            purple_4 = '#9D58D9',
            purple_5 = '#8F41D4',

            -- Done
            red_1 = '#F28B82',
            red_2 = '#EF756A',
            red_3 = '#ED5F52',
            red_4 = '#EA493A',
            red_5 = '#E83322',

            -- Done
            teal_1 = '#7CE8D4',
            teal_2 = '#52E0C6',
            teal_3 = '#26D9B8',
            teal_4 = '#1FAD93',
            teal_5 = '#17826E',

            -- Done (maude)
            violet_2 = '#7D8AC7',
            violet_3 = '#6362C8',
            violet_4 = '#4E57BA',

            -- Done
            yellow_1 = '#E8C47C',
            yellow_2 = '#E4BB67',
            yellow_3 = '#E0B152',
            yellow_4 = '#DDA73C',
            yellow_5 = '#D99D26',
            yellow_6 = '#C38E22',
        }
    end
    if vim.g.maude_darker then
        colors.maude_dark = '#131311'
        colors.maude_dark_alt = '#2C2C28'
        colors.maude_tree = '#4E4E48'
        colors.split_and_borders = '#3E3E3A'
    end

    if vim.g.maude_transparent then
        colors.maude_dark = 'none'
    end

    return colors
end

return M
