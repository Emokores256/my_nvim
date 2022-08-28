require('material').setup({
	-- lualine_style = 'default' -- the default style
	-- or
  	lualine_style = 'stealth', -- the stealth style
  contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
		"terminal", -- Darker terminal background
		-- "packer", -- Darker packer background
		-- "qf" -- Darker qf list background
	},
  contrast = {
		sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = true, -- Enable contrast for floating windows
		line_numbers = false, -- Enable contrast background for line numbers
		sign_column = false, -- Enable contrast background for the sign column
		cursor_line = false, -- Enable darker background for the cursor line
		non_current_windows = false, -- Enable darker background for non-current windows
		popup_menu = true, -- Enable lighter background for the popup menu
	},
  italics = {
		comments = true, -- Enable italic comments
		keywords = false, -- Enable italic keywords
		functions = true, -- Enable italic functions
		strings = false, -- Enable italic strings
		variables = false -- Enable italic variables
	},
  high_visibility = {
		lighter = false, -- Enable higher contrast text for lighter style
		darker = true -- Enable higher contrast text for darker style
	},
})
