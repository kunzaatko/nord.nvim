-- @diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return {
    yamlBlockMappingKey { fg = clrs.nord7 },
    yamlBool { base.Keyword },
    yamlDocumentStart { base.Keyword },
  }
end

return lang

-- vi:nowrap
