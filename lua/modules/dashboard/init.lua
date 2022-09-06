local home = os.getenv("HOME")
local db = require('dashboard')
--
db.preview_command = 'cat' -- for macOS
--
db.preview_file_path = home .. '/.config/nvim/static/header.cat'
db.preview_file_height = 25
db.preview_file_width = 60
db.custom_center = {
    {icon = '  ',
    desc = 'Recently latest session                 ',
    action ='SessionLoad',
    shortcut = 'SPC s l',},
    {icon = '  ',
    desc = 'Recently opened files                   ',
    action =  'DashboardFindHistory',
    shortcut = 'SPC f h'},
    {icon = '  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files',
    shortcut = 'SPC f f'},
    -- {icon = '  ',
    -- desc ='File Browser                            ',
    -- action =  'Telescope file_browser',
    -- shortcut = 'SPC f b'},
    -- {icon = '  ',
    -- desc = 'Find  word                              ',
    -- action = 'Telescope live_grep',
    -- shortcut = 'SPC f w'},
    {icon = '  ',
    desc = 'Open Personal Config                    ',
    action = 'Telescope fd path=' .. home ..'/.config/nvim/lua',
    shortcut = 'SPC f d'},
}
