--@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return {
    podCmdText {fg = clrs.nord7},
    podVerbatimLine {fg = clrs.nord4},
    podFormat {base.Keyword},
  }
end

return lang

-- vi:nowrap
