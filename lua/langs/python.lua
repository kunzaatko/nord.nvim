--@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return {pythonBuiltin {base.Type}, pythonEscape {base.SpecialChar}}
end

return lang

-- vi:nowrap
