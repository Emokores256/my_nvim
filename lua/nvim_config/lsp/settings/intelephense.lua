local lspconfig = require 'lspconfig'
local configs = require 'lspconfig.configs'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

if not configs.intelephense then
  configs.intelephense = {
    default_config = {
      cmd = { 'intelephense', '--stdio' };
      filetypes = { 'php', 'phtml' };
      root_dir = function(fname)
        return vim.loop.cwd()
      end;
      settings = {
        intelephense = {
          files = {
            maxSize = 1000000;
          };
          environment = {
            includePaths = {
              "/home/Workspace/*",
            }
          }
        }
      }
    }
  }
end

lspconfig.intelephense.setup { capabilities = capabilities }
