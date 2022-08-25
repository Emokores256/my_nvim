local util = require 'lspconfig.util'

local bin_name = 'emmet-ls'
local cmd = { bin_name, '--stdio' }


return {
  default_config = {
    cmd = cmd,
    filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
    root_dir = util.find_git_ancestor,
    single_file_support = true,
  },
  docs = {
      default_config = {
      root_dir = 'git root',
      single_file_support = true,
    },
  },
}
