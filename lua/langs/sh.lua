---@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return {
    shCmdParenRegion {base.Delimiter},
    shCmdSubRegion {base.Delimiter},
    shDerefSimple {base.Identifier},
    shDerefVar {base.Identifier},
  }
end

return lang

-- vi:nowrap
