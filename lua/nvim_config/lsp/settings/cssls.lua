local util = require 'lspconfig.util'

local bin_name = 'vscode-css-language-server'
local cmd = { bin_name, '--stdio' }


return {
  default_config = {
    cmd = cmd,
    filetypes = { 'css', 'scss', 'less' },
    root_dir = util.root_pattern('package.json', '.git'),
    single_file_support = true,
    settings = {
      css = { validate = true },
      scss = { validate = true },
      less = { validate = true },
    },
  },
  docs = { 
    default_config = {
      root_dir = [[root_pattern("package.json", ".git") or bufdir]],
    },
  },
}
