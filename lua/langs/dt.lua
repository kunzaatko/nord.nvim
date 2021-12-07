local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return {
    dtBooleanKey {fg = clrs.nord7},
    dtExecKey {fg = clrs.nord7},
    dtLocaleKey {fg = clrs.nord7},
    dtNumericKey {fg = clrs.nord7},
    dtTypeKey {fg = clrs.nord7},
    dtDelim {base.Delimiter},
    dtLocaleValue {base.Keyword},
    dtTypeValue {base.Keyword},
  }
end

return lang

-- vi:nowrap
