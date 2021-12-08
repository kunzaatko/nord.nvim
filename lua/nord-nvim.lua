local lush = require 'lush'
local v = vim.g -- this must be done, because lush is executed in a bare environment

v.colors_name = 'nord'

local theme = require 'base'

v.nord_langs = v.nord_langs or {
  'asciidoc',
  'awk',
  'c',
  'cmake',
  'cs',
  'css',
  'dosini',
  'dt',
  'gitconfig',
  'gitcommit',
  'go',
  'help',
  'html',
  'java',
  'json',
  'less',
  'lisp',
  'lua',
  'markdown',
  'perl',
  'php',
  'pod',
  'python',
  'ruby',
  'rust',
  'sass',
  'sh',
  'sql',
  'vim',
  'xml',
  'yaml',
}
for _, lang in pairs(v.nord_langs) do
  theme = lush.extends({theme}).with(require('langs.' .. lang))
end

v.nord_pkgs = v.nord_pkgs or {
  'ale',
  'coc',
  'cmp',
  'ctrlp',
  'gitsigns',
  'haskell-vim',
  'jedi-vim',
  'nerdtree',
  'tree-sitter',
  'vimtex',
  'vim-clap',
  'vim-fugitive',
  'vim-gitgutter',
  'vim-indent-guides',
  'vim-javascript',
  'vim-markdown',
  'vim-plug',
  'vim-signature',
  'vim-signify',
  'vim-startify',
  'vimwiki',
  'vim-yaml',
  'yats',
}
for _, pkg in pairs(v.nord_pkgs) do
  theme = lush.extends({theme}).with(require('pkgs.' .. pkg))
end

return theme

-- vi:nowrap
