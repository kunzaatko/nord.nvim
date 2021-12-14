-- @diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return { dosiniHeader { fg = clrs.nord8 }, dosiniLabel { base.Type } }
end

return lang

-- vi:nowrap
