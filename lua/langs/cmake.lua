---@diagnostic disable: undefined-global
local palette = require 'nord-palette'

local clrs = palette.clrs
local lang = function()
  return {cmakeGeneratorExpression {fg = clrs.nord10}}
end

return lang

-- vi:nowrap
