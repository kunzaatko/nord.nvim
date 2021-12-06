local palette = require 'nord-palette'
local base = require'base'

local clrs = palette.clrs
local lang = function()
  return {
    sqlKeyword {base.Keyword},
    sqlSpecial {base.Keyword},
  }
end

return lang

-- vi:nowrap
