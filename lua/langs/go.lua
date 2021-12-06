local palette = require 'nord-palette'
local base = require'base'

local clrs = palette.clrs
local lang = function()
  return {
    goBuiltins {fg = clrs.nord7},
    goConstants {base.Keyword},
  }
end

return lang

-- vi:nowrap
