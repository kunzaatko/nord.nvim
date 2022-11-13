-- @diagnostic disable: undefined-global
local palette = require 'nord-palette'

-- ALE
-- > w0rp/ale

local clrs = palette.clrs
local spec = palette.spec
local pkg = function()
  return {
    ALEWarningSign { fg = clrs.nord13 },
    ALEErrorSign { fg = clrs.nord11 },
    ALEWarning { fg = clrs.nord13, gui = spec.undercurl },
    ALEError { fg = clrs.nord11, gui = spec.undercurl },
  }
end

return pkg

-- vi:nowrap
