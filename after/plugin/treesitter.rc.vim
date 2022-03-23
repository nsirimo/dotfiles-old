if !exists('g:loaded_nvim_treesitter')
	finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "html",
    "elixir",
    "dot",
    "erlang",
    "typescript",
    "javascript",
    "yaml",
    "dockerfile",
    "scss"
  },
}

EOF
