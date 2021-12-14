-- @diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return {
    javaDocTags { fg = clrs.nord7 },
    javaCommentTitle { base.Comment },
    javaScriptBraces { base.Delimiter },
    javaScriptIdentifier { base.Keyword },
    javaScriptNumber { base.Number },
  }
end

return lang

-- vi:nowrap
