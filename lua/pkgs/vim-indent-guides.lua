local palette = require 'nord-palette'

-- vim-indent-guides
-- > nathanaelkane/vim-indent-guides

local clrs = palette.clrs
local pkg = function()
  return {IndentGuidesEven {bg = clrs.nord1}, IndentGuidesOdd {bg = clrs.nord2}}
end

return pkg

-- vi:nowrap
