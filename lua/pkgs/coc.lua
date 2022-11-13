-- @diagnostic disable: undefined-global
local palette = require 'nord-palette'

-- Coc
-- > neoclide/coc

local clrs = palette.clrs
local spec = palette.spec
local pkg = function()
  return {
    CocWarningHighlight { fg = clrs.nord13, gui = spec.undercurl },
    CocErrorHighlight { fg = clrs.nord11, gui = spec.undercurl },
    CocWarningSign { fg = clrs.nord13 },
    CocErrorSign { fg = clrs.nord11 },
    CocInfoSign { fg = clrs.nord8 },
    CocHintSign { fg = clrs.nord10 },
  }
end

return pkg

-- vi:nowrap
