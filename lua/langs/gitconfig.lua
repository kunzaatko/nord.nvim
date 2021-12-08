---@diagnostic disable: undefined-global
local palette = require 'nord-palette'

local clrs = palette.clrs
local lang = function()
  return {gitconfigVariable {fg = clrs.nord7}}
end

return lang

-- vi:nowrap
