---@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

-- Markdown
-- > plasticboy/vim-markdown

local clrs = palette.clrs
local pkg = function()
  return {
    mkdCode { fg = clrs.nord7 },
    mkdFootnote { fg = clrs.nord8 },
    mkdRule { fg = clrs.nord10 },
    mkdLineBreak { fg = clrs.nord9 },
    mkdBold { base.Bold },
    mkdItalic { base.Italic },
    mkdString { base.Keyword },
    mkdCodeStart { mkdCode },
    mkdCodeEnd { mkdCode },
    mkdBlockquote { base.Comment },
    mkdListItem { base.Keyword },
    mkdListItemLine { base.Normal },
    mkdFootnotes { mkdFootnote },
    mkdLink { fg = clrs.nord8 },
    mkdURL { fg = clrs.nord4, gui = "NONE" },
    mkdInlineURL { mkdURL },
    mkdID { base.Identifier },
    mkdLinkDef { mkdLink },
    mkdLinkDefTarget { mkdURL },
    mkdLinkTitle { mkdInlineURL },
    mkdDelimiter { base.Keyword },
  }
end

return pkg

-- vi:nowrap
