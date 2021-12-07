local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return {
    lessClass {fg = clrs.nord7},
    lessAmpersand {base.Keyword},
    lessCssAttribute {base.Delimiter},
    lessFunction {base.Function},
  }
end

return lang

-- vi:nowrap
