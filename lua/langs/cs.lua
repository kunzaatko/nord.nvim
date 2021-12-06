local base = require'base'

local lang = function()
  return {
    csPreCondit {base.PreCondit},
    csType {base.Type},
    csXmlTag {base.SpecialComment},
  }
end

return lang

-- vi:nowrap
