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

-- vim.g.dashboard_default_executive = 'telescope'

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
    desc = "Find files                             ",
    action = "Telescope find_files"
  },
  {
    icon = "  ",
    desc = "Recent files                           ",
    action = "Telescope oldfiles"
  },
  {
    icon = "舘 ",
    desc = "Configure dashboard                    ",
    action = "edit ~/.config/nvim/lua/nvim_config/dashboard.lua",
  },
  {
    icon = "  ",
    desc = "Configure plugins                      ",
    action = "edit ~/.config/nvim/lua/nvim_config/plugins.lua"
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

db.custom_footer = { '"First program, then write the code." - Steven E.' }

db.header_pad = 3
db.center_pad = 2
db.footer_pad = 5
