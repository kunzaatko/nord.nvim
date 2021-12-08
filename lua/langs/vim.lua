--@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return {
    vimAugroup {fg = clrs.nord7},
    vimMapRhs {fg = clrs.nord7},
    vimNotation {fg = clrs.nord7},
    vimFunc {base.Function},
    vimFunction {base.Function},
    vimUserFunc {base.Function},
  }
end

return lang

-- vi:nowrap
