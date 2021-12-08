---@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local spec = palette.spec
local lang = function()
  return {
    xmlAttrib {fg = clrs.nord7},
    xmlCdataStart {fg = clrs.nord3_bright, gui = spec.bold},
    xmlNamespace {fg = clrs.nord7},
    xmlAttribPunct {base.Delimiter},
    xmlCdata {base.Comment},
    xmlCdataCdata {xmlCdataStart},
    xmlCdataEnd {xmlCdataStart},
    xmlTagName {base.Keyword},
    xmlEndTag {xmlTagName},
    xmlProcessingDelim {base.Keyword},
  }
end

return lang

-- vi:nowrap
