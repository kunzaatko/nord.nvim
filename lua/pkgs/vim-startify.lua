local palette = require 'nord-palette'
local base = require 'base'

-- vim-startify
-- > mhinz/vim-startify

local clrs = palette.clrs
local pkg = function()
  return {
    StartifyFile {fg = clrs.nord11},
    StartifyFooter {fg = clrs.nord7},
    StartifyHeader {fg = clrs.nord15},
    StartifyNumber {fg = clrs.nord13},
    StartifyPath {fg = clrs.nord8},
    StartifyBracket {fg = clrs.nord6},
    StartifySlash {base.Normal},
    StartifySpecial {base.Comment},
  }
end

return pkg

-- vi:nowrap
