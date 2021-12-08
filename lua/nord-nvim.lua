local lush = require 'lush'
local v = vim.g -- this must be done, because lush is executed in a bare environment

v.colors_name = 'nord'

local theme = require 'base'

-- {'gitcommit'}
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

-- {'vimtex', 'cmp', 'gitsigns', 'vim-startify', 'gitsigns'}
v.nord_pkgs = v.nord_pkgs or {
  'ale',
  'coc',
  'ctrlp',
  'haskell-vim',
  'jedi-vim',
  'nerdtree',
  'tree-sitter',
  'vim-clap',
  'vim-fugitive',
  'vim-gitgutter',
  'vim-indent-guides',
  'vim-javascript',
  'vim-markdown',
  'vim-plug',
  'vim-signature',
  'vim-signify',
  'vimwiki',
  'vim-yaml',
  'yats',
}
for _, pkg in pairs(v.nord_pkgs) do
  theme = lush.extends({theme}).with(require('pkgs.' .. pkg))
end

return theme

-- vi:nowrap
