--@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return {
    markdownBlockquote {fg = clrs.nord7},
    markdownCode {fg = clrs.nord7},
    markdownCodeDelimiter {fg = clrs.nord7},
    markdownFootnote {fg = clrs.nord7},
    markdownId {fg = clrs.nord7},
    markdownIdDeclaration {fg = clrs.nord7},
    markdownH1 {fg = clrs.nord8},
    markdownLinkText {fg = clrs.nord8},
    markdownUrl {fg = clrs.nord4, gui = "NONE"},
    markdownBold {base.Bold},
    markdownBoldDelimiter {base.Keyword},
    markdownFootnoteDefinition {markdownFootnote},
    markdownH2 {markdownH1},
    markdownH3 {markdownH1},
    markdownH4 {markdownH1},
    markdownH5 {markdownH1},
    markdownH6 {markdownH1},
    markdownIdDelimiter {base.Keyword},
    markdownItalic {base.Italic},
    markdownItalicDelimiter {base.Keyword},
    markdownLinkDelimiter {base.Keyword},
    markdownLinkTextDelimiter {base.Keyword},
    markdownListMarker {base.Keyword},
    markdownRule {base.Keyword},
    markdownHeadingDelimiter {base.Keyword},
  }
end

return lang

-- vi:nowrap
