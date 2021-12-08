---@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return {
    phpClasses {fg = clrs.nord7},
    phpClass {fg = clrs.nord7},
    phpDocTags {fg = clrs.nord7},
    phpDocCustomTags {phpDocTags},
    phpMemberSelector {base.Keyword},
    phpMethod {base.Function},
    phpFunction {base.Function},
  }
end

return lang

-- vi:nowrap
