local palette = require 'nord-palette'

local clrs = palette.clrs
local lang = function()
  return {jsonKeyword {fg = clrs.nord7}}
end

return lang

-- vi:nowrap
