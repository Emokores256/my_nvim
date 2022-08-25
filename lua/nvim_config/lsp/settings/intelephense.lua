local util = require 'lspconfig.util'

local bin_name = 'intelephense'
local cmd = { bin_name, '--stdio' }

return {
  default_config = {
    cmd = cmd,
    filetypes = { 'php', 'phtml' },
    root_dir = function(pattern)
      local cwd = vim.loop.cwd()
      local root = util.root_pattern('composer.json', '.git')(pattern)

      -- prefer cwd if root is a descendant
      return util.path.is_descendant(cwd, root) and cwd or root
    end,
    init_options = {
      globalStoragePath = "/usr/bin/intelephense",
      licenseKey = "~/intelephense/license.txt"
    },
    settings = {
      intelephense = {
        files = {
          maxSize = 10000000;
        };
      };
        -- See https://github.com/bmewburn/intelephense-docs
    },

  },
}
