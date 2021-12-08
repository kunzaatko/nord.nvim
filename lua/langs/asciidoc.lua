---@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return {
    asciidocAttributeEntry {fg = clrs.nord10},
    asciidocAttributeList {fg = clrs.nord10},
    asciidocAttributeRef {fg = clrs.nord10},
    asciidocHLabel {fg = clrs.nord9},
    asciidocListingBlock {fg = clrs.nord7},
    asciidocMacroAttributes {fg = clrs.nord8},
    asciidocOneLineTitle {fg = clrs.nord8},
    asciidocPassthroughBlock {fg = clrs.nord9},
    asciidocQuotedMonospaced {fg = clrs.nord7},
    asciidocTriplePlusPassthrough {fg = clrs.nord7},
    asciidocAdmonition {base.Keyword},
    -- asciidocAttributeRef {markdownH1},
    asciidocBackslash {base.Keyword},
    asciidocMacro {base.Keyword},
    asciidocQuotedBold {base.Bold},
    asciidocQuotedEmphasized {base.Italic},
    asciidocQuotedMonospaced2 {asciidocQuotedMonospaced},
    asciidocQuotedUnconstrainedBold {asciidocQuotedBold},
    asciidocQuotedUnconstrainedEmphasized {asciidocQuotedEmphasized},
    -- asciidocURL {markdownLinkText},
  }
end

return lang

-- vi:nowrap
