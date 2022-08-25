local util = require 'lspconfig.util'

local root_files = {
  '.luarc.json',
  '.luacheckrc',
  '.stylua.toml',
  'stylua.toml',
  'selene.toml',
}

local bin_name = 'lua-language-server'
local cmd = { bin_name }

if vim.fn.has 'win32' == 1 then
  cmd = { 'cmd.exe', '/C', bin_name }
end

return {
  default_config = {
    cmd = cmd,
    filetypes = { 'lua' },
    root_dir = function(fname)
      return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname)
    end,
    single_file_support = true,
    log_level = vim.lsp.protocol.MessageType.Warning,
    settings = { 
      Lua = { 
        telemetry = { enable = false },
        runtime = {
          version = 'LuaJIT'
        },
        diagnostics = {
          globals = { 'vim' }
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
        }
      } 
    },
  },
  docs = {
      default_config = {
      root_dir = [[root_pattern(".luarc.json", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", ".git")]],
    },
  },
}
