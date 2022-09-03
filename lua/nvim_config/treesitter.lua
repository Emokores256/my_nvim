local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = "all",
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  autopairs = {
    enable = true
  },
  autotag = {
    enable = true,
    filetypes = {
    	'html',
    	'javascript',
    	'typescript',
    	'javascriptreact',
    	'typescriptreact',
    	'svelte',
    	'vue',
    	'tsx',
    	'jsx',
    	'rescript',
    	'xml',
    	'php',
    	'markdown',
    	'glimmer',
    	'handlebars',
    	'hbs',
      'css'
    },
  },
  skip_tags = {
	  	'area',
	  	'base',
	  	'br',
	  	'col',
	  	'command',
	  	'embed',
	  	'hr',
	  	'img',
	  	'slot',
	  	'input',
	  	'keygen',
	  	'link',
	  	'meta',
	  	'param',
	  	'source',
	  	'track',
	  	'wbr',
	  	'menuitem'
	},
  indent = { enable = true, disable = { "yaml" } },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil
  },
  playground = {
    enable = true
  }
}
