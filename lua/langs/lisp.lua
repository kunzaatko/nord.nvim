-- @diagnostic disable: undefined-global
local base = require 'base'

local lang = function()
  return {
    lispAtomBarSymbol { base.SpecialChar },
    lispAtomList { base.SpecialChar },
    lispAtomMark { base.Keyword },
    lispBarSymbol { base.SpecialChar },
    lispFunc { base.Function },
  }
end

return lang

-- vi:nowrap
