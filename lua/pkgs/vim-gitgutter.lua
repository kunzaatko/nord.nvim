-- @diagnostic disable: undefined-global
local palette = require 'nord-palette'

-- GitGutter
-- > airblade/vim-gitgutter

local clrs = palette.clrs
local pkg = function()
  return {
    GitGutterAdd { fg = clrs.nord14 },
    GitGutterChange { fg = clrs.nord13 },
    GitGutterChangeDelete { fg = clrs.nord11 },
    GitGutterDelete { fg = clrs.nord11 },
  }
end

return pkg

-- vi:nowrap
