require "nvim_config.lsp.settings.cssls"
require "nvim_config.lsp.settings.emmetls"
require "nvim_config.lsp.settings.eslint"
require "nvim_config.lsp.settings.htmlls"
require "nvim_config.lsp.settings.intelephense"
require "nvim_config.lsp.settings.jsonls"
require "nvim_config.lsp.settings.sumneko_lua"
require "nvim_config.lsp.settings.tailwindls"
require "nvim_config.lsp.settings.tsserver"


-- Customization and appearance -----------------------------------------
-- change gutter diagnostic symbols
local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
	virtual_text = {
		source = "if_many",
		prefix = " ", -- Could be '●', '▎', 'x'
	},
	float = {
		source = "always",
	},
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	border = "rounded",
})
