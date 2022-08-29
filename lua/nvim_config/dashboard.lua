local db = require('dashboard')
-- Set header

--[[ dashboard.section.header.val = { ]]
--[[   "                                                     ", ]]
--[[   "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ", ]]
--[[   "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ", ]]
--[[   "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ", ]]
--[[   "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ", ]]
--[[   "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ", ]]
--[[   "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ", ]]
--[[   "                                                     ", ]]
--[[ } ]]

db.default_executive = 'telescope'

db.custom_header = {

   '        ▄▄▄▄▄███████████████████▄▄▄▄▄     ',
   '      ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄   ',
   '     █▀████████▄             ▀▀████ ▀██▄  ',
   '    █▄▄██████████████████▄▄▄         ▄██▀ ',
   '     ▀█████████████████████████▄    ▄██▀  ',
   '       ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀    ',
   '         ▀███▄              ▀██████▀      ',
   '           ▀██████▄        ▄████▀         ',
   '              ▀█████▄▄▄▄▄▄▄███▀           ',
   '                ▀████▀▀▀████▀             ',
   '                  ▀███▄███▀                ',
   '                     ▀█▀                   ',
}


-- Set menu
db.custom_center = {
  {
    icon = "  ",
    desc = "New file                               ",
    action = "enew"
  },
  {
    icon = "  ",
    desc = "Search text                            ",
    action = "Telescope live_grep"
  },
  {
    icon = "  ",
    desc = "Find file                              ",
    action = "Telescope find_files, --hidden, --files"
  },
  {
    icon = "  ",
    desc = "Recent files                           ",
    action = "Telescope Oldfiles"
  },
  {
    icon = "舘 ",
    desc = "Configure dashboard                    ",
    action = "edit ~/.config/nvim/lua/nvim_config/dashboard.lua",
  },
  {
    icon = "  ",
    desc = "Config                                 ",
    action = "edit ~/.config/nvim/lua/nvim_config/base.lua",
  },
  {
    icon = "  ",
    desc = "Quit                                   ",
    action = "qa",
    -- shortcut = "qa"
  },
}

db.custom_footer = { 'Do one thing, do it well! - UNIX Philosophy' }

db.header_pad = 3
db.center_pad = 2
db.footer_pad = 5
